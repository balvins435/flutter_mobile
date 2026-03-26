import 'package:dio/dio.dart';

import '../storage/secure_storage_service.dart';

class ApiConfig {
  static const baseUrl = String.fromEnvironment(
    'SMARTINVOICE_API_URL',
    defaultValue: 'http://10.0.2.2:8000/api',
  );
}

class ApiClient {
  ApiClient(this._secureStorage) {
    dio = Dio(
      BaseOptions(
        baseUrl: ApiConfig.baseUrl,
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20),
        sendTimeout: const Duration(seconds: 20),
        headers: {'Accept': 'application/json'},
      ),
    );
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        final token = await _secureStorage.readAccessToken();
        if (token != null && token.isNotEmpty) {
          options.headers['Authorization'] = 'Bearer $token';
        }
        handler.next(options);
      },
      onError: (error, handler) async {
        if (error.response?.statusCode == 401 && !error.requestOptions.path.contains('/refresh/')) {
          final refreshToken = await _secureStorage.readRefreshToken();
          if (refreshToken != null && refreshToken.isNotEmpty) {
            try {
              final refreshDio = Dio(BaseOptions(baseUrl: ApiConfig.baseUrl));
              final response = await refreshDio.post('/refresh/', data: {'refresh': refreshToken});
              await _secureStorage.saveTokens(
                accessToken: response.data['access'] as String,
                refreshToken: refreshToken,
              );
              final retry = await dio.fetch(
                error.requestOptions.copyWith(
                  headers: {
                    ...error.requestOptions.headers,
                    'Authorization': 'Bearer ${response.data['access']}',
                  },
                ),
              );
              handler.resolve(retry);
              return;
            } catch (_) {}
          }
        }
        handler.next(error);
      },
    ));
  }

  final SecureStorageService _secureStorage;
  late final Dio dio;
}
