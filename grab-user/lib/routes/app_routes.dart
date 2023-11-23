import 'package:flutter/material.dart';
import 'package:team_grab/presentation/welcome_screen/welcome_screen.dart';
import 'package:team_grab/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:team_grab/presentation/verify_otp_screen/verify_otp_screen.dart';
import 'package:team_grab/presentation/verify_otp1_screen/verify_otp1_screen.dart';
import 'package:team_grab/presentation/set_password_screen/set_password_screen.dart';
import 'package:team_grab/presentation/complete_your_profile_screen/complete_your_profile_screen.dart';
import 'package:team_grab/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:team_grab/presentation/send_verification_screen/send_verification_screen.dart';
import 'package:team_grab/presentation/forget_password_screen/forget_password_screen.dart';
import 'package:team_grab/presentation/phone_verify_otp_screen/phone_verify_otp_screen.dart';
import 'package:team_grab/presentation/phone_verify_otp1_screen/phone_verify_otp1_screen.dart';
import 'package:team_grab/presentation/set_new_password_screen/set_new_password_screen.dart';
import 'package:team_grab/presentation/home_screen_transport_container_screen/home_screen_transport_container_screen.dart';
import 'package:team_grab/presentation/search_one_screen/search_one_screen.dart';
import 'package:team_grab/presentation/search_screen/search_screen.dart';
import 'package:team_grab/presentation/search_two_screen/search_two_screen.dart';
import 'package:team_grab/presentation/notification_screen/notification_screen.dart';
import 'package:team_grab/presentation/location_screen_input_screen/location_screen_input_screen.dart';
import 'package:team_grab/presentation/select_transport_screen/select_transport_screen.dart';
import 'package:team_grab/presentation/request_rent_one_screen/request_rent_one_screen.dart';
import 'package:team_grab/presentation/request_rent_screen/request_rent_screen.dart';
import 'package:team_grab/presentation/thank_you_screen/thank_you_screen.dart';
import 'package:team_grab/presentation/message_screen/message_screen.dart';
import 'package:team_grab/presentation/calling_screen/calling_screen.dart';
import 'package:team_grab/presentation/talk_screen/talk_screen.dart';
import 'package:team_grab/presentation/payment_screen/payment_screen.dart';
import 'package:team_grab/presentation/cancel_ride_screen/cancel_ride_screen.dart';
import 'package:team_grab/presentation/add_amount_screen/add_amount_screen.dart';
import 'package:team_grab/presentation/bank_screen/bank_screen.dart';
import 'package:team_grab/presentation/history_upcoming_tab_container_screen/history_upcoming_tab_container_screen.dart';
import 'package:team_grab/presentation/about_us_screen/about_us_screen.dart';
import 'package:team_grab/presentation/address_screen/address_screen.dart';
import 'package:team_grab/presentation/settings_screen/settings_screen.dart';
import 'package:team_grab/presentation/password_screen/password_screen.dart';
import 'package:team_grab/presentation/language_screen/language_screen.dart';
import 'package:team_grab/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:team_grab/presentation/contact_us_screen/contact_us_screen.dart';
import 'package:team_grab/presentation/delete_account_screen/delete_account_screen.dart';
import 'package:team_grab/presentation/help_and_support_screen/help_and_support_screen.dart';
import 'package:team_grab/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String welcomeScreen = '/welcome_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String verifyOtpScreen = '/verify_otp_screen';

  static const String verifyOtp1Screen = '/verify_otp1_screen';

  static const String setPasswordScreen = '/set_password_screen';

  static const String completeYourProfileScreen =
      '/complete_your_profile_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String sendVerificationScreen = '/send_verification_screen';

  static const String forgetPasswordScreen = '/forget_password_screen';

  static const String phoneVerifyOtpScreen = '/phone_verify_otp_screen';

  static const String phoneVerifyOtp1Screen = '/phone_verify_otp1_screen';

  static const String setNewPasswordScreen = '/set_new_password_screen';

  static const String homeScreenTransportPage = '/home_screen_transport_page';

  static const String homeScreenTransportContainerScreen =
      '/home_screen_transport_container_screen';

  static const String searchOneScreen = '/search_one_screen';

  static const String searchScreen = '/search_screen';

  static const String searchTwoScreen = '/search_two_screen';

  static const String notificationScreen = '/notification_screen';

  static const String locationScreenInputScreen =
      '/location_screen_input_screen';

  static const String selectTransportScreen = '/select_transport_screen';

  static const String requestRentOneScreen = '/request_rent_one_screen';

  static const String requestRentScreen = '/request_rent_screen';

  static const String thankYouScreen = '/thank_you_screen';

  static const String messageScreen = '/message_screen';

  static const String callingScreen = '/calling_screen';

  static const String talkScreen = '/talk_screen';

  static const String paymentScreen = '/payment_screen';

  static const String cancelRideScreen = '/cancel_ride_screen';

  static const String favouritePage = '/favourite_page';

  static const String addAmountScreen = '/add_amount_screen';

  static const String bankScreen = '/bank_screen';

  static const String profilePage = '/profile_page';

  static const String historyUpcomingPage = '/history_upcoming_page';

  static const String historyUpcomingTabContainerScreen =
      '/history_upcoming_tab_container_screen';

  static const String historyCompletedPage = '/history_completed_page';

  static const String historyCancelledPage = '/history_cancelled_page';

  static const String aboutUsScreen = '/about_us_screen';

  static const String addressScreen = '/address_screen';

  static const String settingsScreen = '/settings_screen';

  static const String passwordScreen = '/password_screen';

  static const String languageScreen = '/language_screen';

  static const String privacyPolicyScreen = '/privacy_policy_screen';

  static const String contactUsScreen = '/contact_us_screen';

  static const String deleteAccountScreen = '/delete_account_screen';

  static const String helpAndSupportScreen = '/help_and_support_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    welcomeScreen: (context) => WelcomeScreen(),
    signUpScreen: (context) => SignUpScreen(),
    verifyOtpScreen: (context) => VerifyOtpScreen(),
    verifyOtp1Screen: (context) => VerifyOtp1Screen(),
    setPasswordScreen: (context) => SetPasswordScreen(),
    completeYourProfileScreen: (context) => CompleteYourProfileScreen(),
    signInScreen: (context) => SignInScreen(),
    sendVerificationScreen: (context) => SendVerificationScreen(),
    forgetPasswordScreen: (context) => ForgetPasswordScreen(),
    phoneVerifyOtpScreen: (context) => PhoneVerifyOtpScreen(),
    phoneVerifyOtp1Screen: (context) => PhoneVerifyOtp1Screen(),
    setNewPasswordScreen: (context) => SetNewPasswordScreen(),
    homeScreenTransportContainerScreen: (context) =>
        HomeScreenTransportContainerScreen(),
    searchOneScreen: (context) => SearchOneScreen(),
    searchScreen: (context) => SearchScreen(),
    searchTwoScreen: (context) => SearchTwoScreen(),
    notificationScreen: (context) => NotificationScreen(),
    locationScreenInputScreen: (context) => LocationScreenInputScreen(),
    selectTransportScreen: (context) => SelectTransportScreen(),
    requestRentOneScreen: (context) => RequestRentOneScreen(),
    requestRentScreen: (context) => RequestRentScreen(),
    thankYouScreen: (context) => ThankYouScreen(),
    messageScreen: (context) => MessageScreen(),
    callingScreen: (context) => CallingScreen(),
    talkScreen: (context) => TalkScreen(),
    paymentScreen: (context) => PaymentScreen(),
    cancelRideScreen: (context) => CancelRideScreen(),
    addAmountScreen: (context) => AddAmountScreen(),
    bankScreen: (context) => BankScreen(),
    historyUpcomingTabContainerScreen: (context) =>
        HistoryUpcomingTabContainerScreen(),
    aboutUsScreen: (context) => AboutUsScreen(),
    addressScreen: (context) => AddressScreen(),
    settingsScreen: (context) => SettingsScreen(),
    passwordScreen: (context) => PasswordScreen(),
    languageScreen: (context) => LanguageScreen(),
    privacyPolicyScreen: (context) => PrivacyPolicyScreen(),
    contactUsScreen: (context) => ContactUsScreen(),
    deleteAccountScreen: (context) => DeleteAccountScreen(),
    helpAndSupportScreen: (context) => HelpAndSupportScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
