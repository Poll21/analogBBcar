import 'package:analoguebbcars/application/data/data_user/user_data.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class UserSecureStorage{
  static final _storage = FlutterSecureStorage();
  static const _keyUid = 'uid';
  static const _keyPhoneNumber = 'phoneNumber';
  static const _keyToken = '_keyToken';


//запись и чтение uid в хранилище
  static Future setUid(String uid) async =>
      await _storage.write(key: _keyUid, value: uid);
  static Future<String?> getUid() async =>
      await _storage.read(key: _keyUid);
//запись и чтение номера телефона в хранилище
  static Future setPhoneNumber(String phoneNumber) async =>
      await _storage.write(key: _keyPhoneNumber, value: phoneNumber);
  static Future<String?> getPhoneNumber() async =>
      await _storage.read(key: _keyPhoneNumber);
//запись и чтение Token в хранилище
  static Future setToken(int token) async =>
      await _storage.write(key:_keyToken, value: token.toString());
  static Future<String?> getToken() async {
     await _storage.read(key: _keyToken);

  }



}