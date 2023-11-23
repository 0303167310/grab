import 'package:flutter/material.dart';
import 'package:team_grab/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "05_Welcome _screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.welcomeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "06_sign_up",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "07_verify_otp",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.verifyOtpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "08_verify_otp",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.verifyOtp1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "09_set_password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.setPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "10_Complete_your_profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.completeYourProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "11_sign_in",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "12_send_verification",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.sendVerificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "12 Forget Password ",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgetPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "13_phone_verify_otp",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.phoneVerifyOtpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "14_phone_verify_otp",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.phoneVerifyOtp1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "15_set_new_password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.setNewPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "16_home_screen_Transport - Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.homeScreenTransportContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.searchOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.searchScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.searchTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "18_notification_screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "20_Location_screen_input",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.locationScreenInputScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "22_select_transport",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.selectTransportScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "27_request_rent One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.requestRentOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "27_request_rent",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.requestRentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "28_Thank_you",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.thankYouScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "30_Message_screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.messageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "31_Calling_screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.callingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "32_Talk_screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.talkScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "33_payment",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Cancel Ride",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cancelRideScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "39_Add Amount",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addAmountScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "40_bank",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.bankScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "45_History_Upcoming - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.historyUpcomingTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "51_About Us",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aboutUsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Address",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addressScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "52_Settings",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "53_Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.passwordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "54_language",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.languageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "55_Privacy_policy",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.privacyPolicyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "56_Contact US",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.contactUsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "57_ Delete_account",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.deleteAccountScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "58_Help and Support",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.helpAndSupportScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
