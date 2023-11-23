import 'package:flutter/material.dart';import 'package:team_grab/core/app_export.dart';import 'package:team_grab/widgets/app_bar/appbar_leading_image.dart';import 'package:team_grab/widgets/app_bar/appbar_subtitle.dart';import 'package:team_grab/widgets/app_bar/custom_app_bar.dart';import 'package:team_grab/widgets/custom_elevated_button.dart';import 'package:team_grab/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class SendVerificationScreen extends StatelessWidget {SendVerificationScreen({Key? key}) : super(key: key);

TextEditingController phoneNumberController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 13.v), child: Column(children: [SizedBox(height: 20.v), Expanded(child: SingleChildScrollView(child: _buildSendVerification(context)))]))), bottomNavigationBar: _buildSendOTP(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 32.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftGray900, margin: EdgeInsets.only(left: 8.h, top: 16.v, bottom: 15.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitle(text: "Back", margin: EdgeInsets.only(left: 5.h))); } 
/// Section Widget
Widget _buildSendVerification(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 15.h, right: 15.h, bottom: 5.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(width: 327.h, margin: EdgeInsets.only(right: 35.h), child: Text("Verifivation email or phone number", maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.headlineSmall!.copyWith(height: 1.25))), SizedBox(height: 39.v), CustomTextFormField(controller: phoneNumberController, hintText: "Email or phone number", textInputAction: TextInputAction.done, textInputType: TextInputType.emailAddress)])); } 
/// Section Widget
Widget _buildSendOTP(BuildContext context) { return CustomElevatedButton(text: "Send OTP", margin: EdgeInsets.only(left: 17.h, right: 16.h, bottom: 70.v)); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
