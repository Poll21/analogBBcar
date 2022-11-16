import 'package:firebase_auth/firebase_auth.dart';

class UserData {
  // final String displyName;
  // final String email;
  // final String emailVerified;
  // final bool isAnonymus;
  // final String metaData;
  late String phoneNumber;
  // final String photoURL;
  // final String providerData;
  // final String refreshToken;
  // final String tenantId;
  late String id;

  UserData.fromFirebase(User user){
    id = user.uid;
    phoneNumber = user.uid;
  }


}

