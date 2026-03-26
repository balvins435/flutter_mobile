import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers.dart';
import '../domain/auth_models.dart';

class AuthController extends AsyncNotifier<AuthState> {
  @override
  Future<AuthState> build() async {
    final user = await ref.read(authRepositoryProvider).restoreSession();
    if (user == null) {
      return const AuthState.unauthenticated();
    }
    return AuthState.authenticated(user: user);
  }

  Future<void> login({required String email, required String password}) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final user = await ref.read(authRepositoryProvider).login(email: email, password: password);
      return AuthState.authenticated(user: user);
    });
    ref.invalidate(businessControllerProvider);
  }

  Future<void> register({required String fullName, required String email, required String password}) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final user = await ref.read(authRepositoryProvider).register(fullName: fullName, email: email, password: password);
      return AuthState.authenticated(user: user);
    });
    ref.invalidate(businessControllerProvider);
  }

  Future<void> forgotPassword(String email) => ref.read(authRepositoryProvider).forgotPassword(email);

  Future<void> resetPassword({required String uid, required String token, required String password}) {
    return ref.read(authRepositoryProvider).resetPassword(uid: uid, token: token, password: password);
  }

  Future<void> logout() async {
    await ref.read(authRepositoryProvider).logout();
    state = const AsyncData(AuthState.unauthenticated());
    ref.invalidate(businessControllerProvider);
  }

  Future<void> updateProfile(UserProfile user) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final updated = await ref.read(authRepositoryProvider).updateProfile(user);
      return AuthState.authenticated(user: updated);
    });
  }
}
