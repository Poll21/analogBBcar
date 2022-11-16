import 'package:analoguebbcars/services/user_secure_storage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class SessionDataProviderKeys {
  static const _apiKey ='api_key';
}

class SessionDataProvider {
  final _secureStorage = UserSecureStorage();
}