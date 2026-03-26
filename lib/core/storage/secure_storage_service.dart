import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  SecureStorageService(this._storage);

  final FlutterSecureStorage _storage;

  static const accessTokenKey = 'access_token';
  static const refreshTokenKey = 'refresh_token';

  Future<void> saveTokens({required String accessToken, required String refreshToken}) async {
    await _storage.write(key: accessTokenKey, value: accessToken);
    await _storage.write(key: refreshTokenKey, value: refreshToken);
  }

  Future<String?> readAccessToken() => _storage.read(key: accessTokenKey);

  Future<String?> readRefreshToken() => _storage.read(key: refreshTokenKey);

  Future<void> clearSession() => _storage.deleteAll();
}
