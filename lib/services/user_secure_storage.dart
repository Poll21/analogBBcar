import 'package:analoguebbcars/application/data/data_user/user_data.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class _FlutterSecureStorageKeys {
  static const _keyUid = 'uid';
  static const _keyPhoneNumber = 'phoneNumber';
  static const _keyToken = '_keyToken';
}

class UserSecureStorage {
  final _secureStorage = const FlutterSecureStorage();

  //запись uid в хранилище
  Future setUid(String? uid) async =>
      await _secureStorage.write(key: _FlutterSecureStorageKeys._keyUid, value: uid);
  // чтение uid из хранилища
  Future<String?> getUid() async =>
      await _secureStorage.read(key: _FlutterSecureStorageKeys._keyUid);

  //запись и чтение номера телефона в хранилище
  Future setPhoneNumber(String? phoneNumber) async =>
      await _secureStorage.write(key: _FlutterSecureStorageKeys._keyPhoneNumber, value: phoneNumber);

  Future<String?> getPhoneNumber() async {
    final phoneNumber = await _secureStorage.read(key: _FlutterSecureStorageKeys._keyPhoneNumber);
    print(phoneNumber);
    return phoneNumber;
  }


//запись и чтение Token в хранилище
  Future setToken(String? token) async =>
      await _secureStorage.write(key: _FlutterSecureStorageKeys._keyToken, value: token);

  Future<String?> getToken() async {
    await _secureStorage.read(key: _FlutterSecureStorageKeys._keyToken);
  }
}
