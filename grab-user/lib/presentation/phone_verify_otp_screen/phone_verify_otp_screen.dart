import 'package:flutter/material.dart';import 'package:team_grab/core/app_export.dart';import 'package:team_grab/widgets/app_bar/appbar_leading_image.dart';import 'package:team_grab/widgets/app_bar/appbar_subtitle.dart';import 'package:team_grab/widgets/app_bar/custom_app_bar.dart';import 'package:team_grab/widgets/custom_elevated_button.dart';import 'package:team_grab/widgets/custom_pin_code_text_field.dart';class PhoneVerifyOtpScreen extends StatelessWidget {const PhoneVerifyOtpScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 51.h, vertical: 22.v), child: Column(children: [Text("Forgot Password", style: theme.textTheme.headlineSmall), SizedBox(height: 6.v), Text("Code has been send to ***** ***70", style: CustomTextStyles.bodyLargeGray500), SizedBox(height: 39.v), CustomPinCodeTextField(context: context, onChanged: (value) {}), SizedBox(height: 20.v), RichText(text: TextSpan(children: [TextSpan(text: "Didn’t receive code? ", style: theme.textTheme.titleMedium), TextSpan(text: "Resend again", style: CustomTextStyles.titleMediumPrimary_1)]), textAlign: TextAlign.left), SizedBox(height: 5.v)])), bottomNavigationBar: _buildVerify(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 32.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftGray900, margin: EdgeInsets.only(left: 8.h, top: 16.v, bottom: 15.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitle(text: "Back", margin: EdgeInsets.only(left: 5.h))); } 
/// Section Widget
Widget _buildVerify(BuildContext context) { return CustomElevatedButton(text: " Verify", margin: EdgeInsets.only(left: 17.h, right: 16.h, bottom: 50.v)); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
