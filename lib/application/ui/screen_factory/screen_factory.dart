import 'package:analoguebbcars/application/ui/screens/bringing_screen/registration_profile_scrin.dart';
import 'package:analoguebbcars/application/ui/screens/create_trip_screens/additional_options/additional_options_screen.dart';
import 'package:analoguebbcars/application/ui/screens/create_trip_screens/driver_profile_screen/driver_profile_screen.dart';
import 'package:analoguebbcars/application/ui/screens/create_trip_screens/trip_data_screen/trip_data_screen.dart';
import 'package:analoguebbcars/application/ui/screens/main_tabs/main_tabs_screen.dart';
import 'package:analoguebbcars/application/ui/screens/trip_search_screens/trip_not_found_screen/trip_not_found_screen.dart';
import 'package:analoguebbcars/application/ui/screens/trip_search_screens/trip_search_screen/trip_search_screen.dart';
import 'package:flutter/cupertino.dart';
import '../screens/active_travel_screens/trip_screen/passenger_exception_screen.dart';
import '../screens/active_travel_screens/trip_screen/trip_carrier_screen.dart';
import '../screens/active_travel_screens/trip_screen/trip_passenger_screen.dart';
import '../screens/bringing_screen/bringing_screen.dart';
import '../screens/bringing_screen/registration_phone_screen.dart';
import '../screens/complaint_screen/complaint_screen.dart';
import '../screens/complaint_screen/complaint_sent_screen.dart';
import '../screens/create_trip_screens/cars_profile/cars_profile.dart';
import '../screens/create_trip_screens/create_trip_screen/create_trip_screen.dart';
import '../screens/create_trip_screens/payment_trip_screen/payment_completed.dart';
import '../screens/create_trip_screens/payment_trip_screen/payment_trip_screen.dart';
import '../screens/end_of_trip_screens/end_of_trip_screen.dart';
import '../screens/leave_feedback_screen/leave_feedback_about_carrier_screen.dart';
import '../screens/travel_requests_screens/travel_requests_screen/passenger_accepted_screen.dart';
import '../screens/travel_requests_screens/travel_requests_screen/travel_request_detail_screen.dart';
import '../screens/travel_requests_screens/travel_requests_screen/travel_requests_screen.dart';
import '../screens/trip_cancellation_screen/trip_cancellation_last_screen.dart';
import '../screens/trip_cancellation_screen/trip_cancellation_screen.dart';
import '../screens/trip_search_screens/success_request_screen/success_request_screen.dart';
import '../screens/trip_search_screens/trip_found_detal_screen/trip_found_detal_screen.dart';
import '../screens/trip_search_screens/trip_found_screen/trip_found_screen.dart';
import '../screens/user_blocking_screen/user_blocking_screen.dart';
int id = 0;
class ScreenFactory {
  Widget makeBringing() => BringingScreen();
  Widget makeRegistrationgPhone() => const RegistrationPhoneScreen();
  // Widget makeCodSms() =>  const CodSmsScreen(userPhone: '',);
  Widget makeMainTabs() => const MainTabsScreen();
  Widget makeRegistrationProfile() => RegistrationProfileScreen();
  Widget makeCarProfile() => const CarsProfileScreen();
  Widget makeCreateTrip() => const CreateTripScreen();
  Widget makeDriverProfile() => const DriverProfileScreen();
  Widget makeAdditionalOptions() => const AdditionalOptionsScreen();
  Widget makeTripData() => const TripDataScreen();
  Widget makePaymentTrip() => const PaymentTripScreen();
  Widget makePaymentCompleted() => const PaymentCompletedScreen();
  Widget makeTripSearch() => const TripSearchScreen();
  Widget makeTripNotFound() => const TripNotFoundScreen();
  Widget makeTripFound() => const TripFoundScreen();
  Widget makeTripDetalFound() => const TripFoundDetalScreen();
  Widget makeSuccessRequest() => const SuccessRequestScreen();
  Widget makeTravelRequests() => const TravelRequestsScreen();
  Widget makeTravelRequestDetail() => const TravelRequestDetailScreen();
  Widget makePassengerAccepted() => const PassengerAcceptedScreen();
  Widget makeTripPassenger() => const TripScreenPassenger();
  Widget makeTripCarrier() => const TripScreenCarrier();
  Widget makeTripCancellation() => const TripCancellationScreen();
  Widget makeTripCancellationLast() => const TripCancellationLastScreen();
  Widget makeEndOfTripCarrier() => const EndOfTripCarrierScreen();
  Widget makeLeaveFeedbackAboutCarrie() => const LeaveFeedbackAboutCarrierScreen();
  Widget makePassengerException() => const PassengerExceptionScreen();
  Widget makeComplaint() => const ComplaintScreen();
  Widget makeComplaintSent() => const ComplaintSentScreen();
  Widget makeUserBlocking() => const UserBlockingScreen();
}