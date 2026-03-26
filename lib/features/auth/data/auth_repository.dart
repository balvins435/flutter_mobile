import 'package:dio/dio.dart';

import '../../../core/network/api_client.dart';
import '../../../core/storage/secure_storage_service.dart';
import '../domain/auth_models.dart';

class AuthRepository {
  AuthRepository(this._apiClient, this._secureStorage);

  final ApiClient _apiClient;
  final SecureStorageService _secureStorage;

  Future<UserProfile?> restoreSession() async {
    final access = await _secureStorage.readAccessToken();
    final refresh = await _secureStorage.readRefreshToken();
    if (access == null || refresh == null) {
      return null;
    }
    try {
      final response = await _apiClient.dio.get('/me/');
      return UserProfile.fromJson(response.data as Map<String, dynamic>);
    } on DioException {
      return null;
    }
  }

  Future<UserProfile> login({required String email, required String password}) async {
    final response = await _apiClient.dio.post('/login/', data: {'email': email, 'password': password});
    final tokens = SessionTokens.fromJson(response.data as Map<String, dynamic>);
    await _secureStorage.saveTokens(accessToken: tokens.access, refreshToken: tokens.refresh);
    final me = await _apiClient.dio.get('/me/');
    return UserProfile.fromJson(me.data as Map<String, dynamic>);
  }

  Future<UserProfile> register({required String fullName, required String email, required String password}) async {
    await _apiClient.dio.post('/register/', data: {
      'full_name': fullName,
      'email': email,
      'password': password,
      'password_confirm': password,
    });
    return login(email: email, password: password);
  }

  Future<void> forgotPassword(String email) {
    return _apiClient.dio.post('/password-reset/', data: {'email': email});
  }

  Future<void> resetPassword({required String uid, required String token, required String password}) {
    return _apiClient.dio.post('/password-reset/confirm/', data: {
      'uid': uid,
      'token': token,
      'new_password': password,
      'confirm_password': password,
    });
  }

  Future<UserProfile> updateProfile(UserProfile user) async {
    final response = await _apiClient.dio.put('/me/update-profile/', data: {
      'full_name': user.fullName,
      'email_invoice_updates': user.emailInvoiceUpdates,
      'email_weekly_summary': user.emailWeeklySummary,
      'email_marketing': user.emailMarketing,
    });
    return UserProfile.fromJson(response.data as Map<String, dynamic>);
  }

  Future<void> changePassword({required String currentPassword, required String newPassword}) {
    return _apiClient.dio.put('/me/change-password/', data: {
      'current_password': currentPassword,
      'new_password': newPassword,
      'confirm_password': newPassword,
    });
  }

  Future<void> logout() async {
    final refresh = await _secureStorage.readRefreshToken();
    if (refresh != null) {
      try {
        await _apiClient.dio.post('/logout/', data: {'refresh': refresh});
      } on DioException {
        // Logout should still clear local session if the backend call fails.
      }
    }
    await _secureStorage.clearSession();
  }
}
