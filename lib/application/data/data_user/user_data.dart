import 'package:firebase_auth/firebase_auth.dart';

class UserData {
  late String? uDisplyName;
  // final String email;
  // final String emailVerified;
  // final bool isAnonymus;
  // final String metaData;
  late String? uPhoneNumber;
  // final String photoURL;
  // final String providerData;
  // final String refreshToken;
  // final String tenantId;
  late String id;

  UserData.fromFirebase(User user){
    id = user.uid;
    uPhoneNumber = user.phoneNumber;
    uDisplyName = user.displayName;
  }


}

