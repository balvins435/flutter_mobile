import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers.dart';
import '../domain/business_models.dart';

class BusinessViewState {
  const BusinessViewState({required this.businesses, required this.activeBusinessId});

  final List<Business> businesses;
  final int? activeBusinessId;

  Business? get activeBusiness {
    if (activeBusinessId == null) return null;
    for (final business in businesses) {
      if (business.id == activeBusinessId) return business;
    }
    return null;
  }
}

class BusinessController extends AsyncNotifier<BusinessViewState> {
  @override
  Future<BusinessViewState> build() async {
    final repo = ref.read(businessRepositoryProvider);
    final businesses = await repo.fetchBusinesses();
    var activeId = await repo.getActiveBusinessId();
    if (activeId == null && businesses.length == 1) {
      activeId = businesses.first.id;
      await repo.setActiveBusiness(activeId);
    }
    return BusinessViewState(businesses: businesses, activeBusinessId: activeId);
  }

  Future<void> refreshBusinesses() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(build);
  }

  Future<void> selectBusiness(int businessId) async {
    await ref.read(businessRepositoryProvider).setActiveBusiness(businessId);
    final current = state.requireValue;
    state = AsyncData(BusinessViewState(businesses: current.businesses, activeBusinessId: businessId));
  }

  Future<void> createBusiness({
    required String name,
    required String email,
    required String phone,
    required String address,
    required double taxRate,
  }) async {
    final created = await ref.read(businessRepositoryProvider).createBusiness(
      name: name,
      email: email,
      phone: phone,
      address: address,
      taxRate: taxRate,
    );
    await ref.read(businessRepositoryProvider).setActiveBusiness(created.id);
    final current = state.valueOrNull;
    state = AsyncData(
      BusinessViewState(
        businesses: [...?current?.businesses, created],
        activeBusinessId: created.id,
      ),
    );
  }

  Future<void> updateBusiness(Business business) async {
    final updated = await ref.read(businessRepositoryProvider).updateBusiness(business);
    final current = state.requireValue;
    state = AsyncData(
      BusinessViewState(
        businesses: current.businesses.map((item) => item.id == updated.id ? updated : item).toList(),
        activeBusinessId: current.activeBusinessId,
      ),
    );
  }
}
