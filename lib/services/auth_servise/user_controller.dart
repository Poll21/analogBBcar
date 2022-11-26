import 'package:analoguebbcars/application/data/data_user/user_data.dart';
import 'package:get/get.dart';


class UserController extends GetxController {
  Rx<UserData> _userModel = UserData.fromFirebase().obs;

  UserData get user => _userModel.value;

  set user(UserData value) => this._userModel.value = value;

  void clear() {
    _userModel.value = UserData.fromFirebase(user);
  }
}