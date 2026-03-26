import 'package:dio/dio.dart';

import '../../../core/database/app_database.dart';
import '../../../core/network/api_client.dart';
import '../domain/expense_models.dart';

class ExpensesRepository {
  ExpensesRepository(this._apiClient, this._database);

  final ApiClient _apiClient;
  final AppDatabase _database;

  Future<List<Expense>> fetchExpenses(int businessId, {String search = ''}) async {
    try {
      final response = await _apiClient.dio.get('/expenses/', queryParameters: {
        'business_id': businessId,
        if (search.isNotEmpty) 'search': search,
      });
      final items = (response.data as List<dynamic>)
          .map((item) => Expense.fromJson(item as Map<String, dynamic>))
          .toList();
      await _database.replaceExpenseCache(businessId, items.map((item) => item.toJson()).toList());
      return items;
    } on DioException {
      final cached = await _database.readExpenseCache(businessId);
      return cached.map(Expense.fromJson).toList();
    }
  }

  Future<Expense> saveExpense({required int businessId, required Expense expense}) async {
    final payload = {
      'business_id': businessId,
      'title': expense.title,
      'description': expense.description.isNotEmpty ? expense.description : expense.notes,
      'category': expense.category,
      'amount': expense.amount,
      'vat_amount': expense.vatAmount,
      'tax_deductible': expense.taxDeductible,
      'expense_date': expense.expenseDate?.toIso8601String().split('T').first,
    };

    try {
      final response = expense.id == null
          ? await _apiClient.dio.post('/expenses/', data: payload)
          : await _apiClient.dio.put('/expenses/${expense.id}/', data: payload);
      return Expense.fromJson(response.data as Map<String, dynamic>);
    } on DioException {
      final local = expense.copyWith(
        businessId: businessId,
        updatedAt: DateTime.now(),
        syncState: 'pending',
      );
      final cached = await _database.readExpenseCache(businessId);
      final current = cached.map(Expense.fromJson).toList();
      final next = [...current.where((item) => item.id != local.id), local];
      await _database.replaceExpenseCache(businessId, next.map((item) => item.toJson()).toList());
      await _database.enqueueMutation(
        feature: 'expense',
        operation: expense.id == null ? 'create' : 'update',
        businessId: businessId,
        payload: payload,
      );
      return local;
    }
  }

  Future<List<String>> fetchCategories() async {
    final response = await _apiClient.dio.get('/expenses/categories/');
    return (response.data as List<dynamic>)
        .map((item) => (item as Map<String, dynamic>)['name'] as String)
        .toList();
  }
}
