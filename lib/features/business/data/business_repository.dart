import '../../../core/database/app_database.dart';
import '../../../core/network/api_client.dart';
import '../domain/business_models.dart';

class BusinessRepository {
  BusinessRepository(this._apiClient, this._database);

  final ApiClient _apiClient;
  final AppDatabase _database;

  Future<List<Business>> fetchBusinesses() async {
    final response = await _apiClient.dio.get('/business/');
    return (response.data as List<dynamic>)
        .map((item) => Business.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  Future<Business> createBusiness({
    required String name,
    required String email,
    required String phone,
    required String address,
    required double taxRate,
  }) async {
    final response = await _apiClient.dio.post('/business/', data: {
      'business_name': name,
      'display_name': name,
      'email': email,
      'phone': phone,
      'address': address,
      'tax_rate': taxRate,
    });
    return Business.fromJson(response.data as Map<String, dynamic>);
  }

  Future<Business> updateBusiness(Business business) async {
    final response = await _apiClient.dio.put('/business/${business.id}/', data: {
      'business_name': business.businessName,
      'display_name': business.displayName,
      'email': business.email,
      'phone': business.phone,
      'address': business.address,
      'tax_rate': business.taxRate,
      'logo_shape': business.logoShape,
    });
    return Business.fromJson(response.data as Map<String, dynamic>);
  }

  Future<void> setActiveBusiness(int businessId) => _database.saveSetting('active_business_id', '$businessId');

  Future<int?> getActiveBusinessId() async {
    final raw = await _database.readSetting('active_business_id');
    return raw == null ? null : int.tryParse(raw);
  }
}
