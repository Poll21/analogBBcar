import 'package:flutter/material.dart';
import '../screen_factory/screen_factory.dart';
import 'package:analoguebbcars/services/auth_servise/auth_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class Screens {
  static const main = "/";
  static const registrationPhone = "/registrationPhone";
  // static const constcodSms = "/registrationPhone/constcodSms";
  static const registrationProfile = "/registrationPhone/constcodSms/registrationProfile";
  static const carProfile = "/carProfile";
  static const createTrip = "/carProfile/createTrip";
  static const driverProfile = "/carProfile/createTrip/driver_profile";
  static const driverAdditionalOptions = "/carProfile/createTrip/driver_profile/";
  static const driverTripData = "/carProfile/createTrip/driver_profile/trip_data";
  static const paymentTrip = "/carProfile/createTrip/driver_profile/trip_data/payment_trip";
  static const paymentCompleted = "/carProfile/createTrip/driver_profile/trip_data/payment_trip/payment_completed";
  static const tripSearch = "/trip_search";
  static const tripNotFound = "/trip_search/tripNotFound ";
  static const tripFound = "/trip_search/tripNotFound/tripFound ";
  static const tripDetalFound = "/trip_search/tripNotFound/tripFound/tripDetalFound";
  static const successRequest = "/trip_search/tripNotFound/tripFound/tripDetalFound/successRequest";
  static const travelRequests = "/travelRequests";
  static const travelRequestDetail = "/travelRequests/travelRequestDetail";
  static const travelPassengerAccepted = "/travelRequests/travelRequestDetail/travelPassengerAccepted ";
  static const travelTripPassenger = "/travelTripPassenger";
  static const travelTripCarrier = "/travelTripCarrier";
  static const travelTripCancellation = "/travelTripCancellation";
  static const travelTripCancellationLast = "/travelTripCancellation/TripCancellationLast";
  static const endOfTripCarrier = "/travelTripCancellation/TripCancellationLast/endOfTripCarrier";
  static const leaveFeedbackAboutCarrie = "/travelTripCancellation/TripCancellationLast/endOfTripCarrier/LeaveFeedback";
  static const passengerException = "/travelTripCarrier/passengerException";
  static const complaint = "/travelTripCarrier/passengerException/complaint";
  static const complaintSent = "/travelTripCarrier/passengerException/complaint/complaintSent";
  static const blocking = "/travelTripCarrier/passengerException/complaint/complaintSent/blocking";
}

class MainNavigation {
  final _screenFactory = ScreenFactory();
  bool isLogin = false;
  Map<String, WidgetBuilder> get routes => <String, WidgetBuilder>{
    Screens.main: (_) {
      isLogin = false;
      return isLogin ? _screenFactory.makeMainTabs() : _screenFactory.makeBringing();
    },
    Screens.registrationPhone: (_) => _screenFactory.makeRegistrationgPhone(),
    // Screens.constcodSms: (_) => _screenFactory.makeCodSms(),
    Screens.registrationProfile: (_) => _screenFactory.makeRegistrationProfile(),
    Screens.carProfile: (_) => _screenFactory.makeCarProfile(),
    Screens.createTrip: (_) => _screenFactory.makeCreateTrip(),
    Screens.driverProfile: (_) => _screenFactory.makeDriverProfile(),
    Screens.driverAdditionalOptions: (_) => _screenFactory.makeAdditionalOptions(),
    Screens.driverTripData: (_) => _screenFactory.makeTripData(),
    Screens.paymentTrip: (_) => _screenFactory.makePaymentTrip(),
    Screens.paymentCompleted: (_) => _screenFactory.makePaymentCompleted(),
    Screens.tripSearch: (_) => _screenFactory.makeTripSearch(),
    Screens.tripNotFound: (_) => _screenFactory.makeTripNotFound(),
    Screens.tripFound: (_) => _screenFactory.makeTripFound(),
    Screens.tripDetalFound: (_) => _screenFactory.makeTripDetalFound(),
    Screens.successRequest: (_) => _screenFactory.makeSuccessRequest(),
    Screens.travelRequests: (_) => _screenFactory.makeTravelRequests(),
    Screens.travelRequestDetail: (_) => _screenFactory.makeTravelRequestDetail(),
    Screens.travelPassengerAccepted: (_) => _screenFactory.makePassengerAccepted(),
    Screens.travelTripPassenger: (_) => _screenFactory.makeTripPassenger(),
    Screens.travelTripCarrier: (_) => _screenFactory.makeTripCarrier(),
    Screens.travelTripCancellation: (_) => _screenFactory.makeTripCancellation(),
    Screens.travelTripCancellationLast: (_) => _screenFactory.makeTripCancellationLast(),
    Screens.endOfTripCarrier: (_) => _screenFactory.makeEndOfTripCarrier(),
    Screens.leaveFeedbackAboutCarrie: (_) => _screenFactory.makeLeaveFeedbackAboutCarrie(),
    Screens.passengerException: (_) => _screenFactory.makePassengerException(),
    Screens.complaint: (_) => _screenFactory.makeComplaint(),
    Screens.complaintSent: (_) => _screenFactory.makeComplaintSent(),
    Screens.blocking: (_) => _screenFactory.makeUserBlocking(),
  };
  Route<dynamic>? onGenerateRoute(RouteSettings settings){
    return null;
  }
}

