import 'package:flutter/material.dart';import 'package:team_grab/core/app_export.dart';import 'package:team_grab/widgets/app_bar/appbar_leading_image.dart';import 'package:team_grab/widgets/app_bar/appbar_subtitle.dart';import 'package:team_grab/widgets/app_bar/appbar_title.dart';import 'package:team_grab/widgets/app_bar/custom_app_bar.dart';import 'package:team_grab/widgets/custom_elevated_button.dart';import 'package:team_grab/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class PasswordScreen extends StatelessWidget {PasswordScreen({Key? key}) : super(key: key);

TextEditingController passwordFieldController = TextEditingController();

TextEditingController newPasswordFieldController = TextEditingController();

TextEditingController confirmPasswordFieldController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 21.v), child: Column(children: [_buildPasswordField(context), SizedBox(height: 16.v), _buildNewPasswordField(context), SizedBox(height: 16.v), _buildConfirmPasswordField(context), SizedBox(height: 32.v), _buildSaveButton(context), SizedBox(height: 5.v)]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 32.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftGray900, margin: EdgeInsets.only(left: 8.h, top: 14.v, bottom: 17.v), onTap: () {onTapArrowLeft(context);}), title: Padding(padding: EdgeInsets.only(left: 5.h), child: Row(children: [AppbarSubtitle(text: "Back", margin: EdgeInsets.only(bottom: 3.v)), AppbarTitle(text: "Change Password", margin: EdgeInsets.only(left: 37.h, top: 1.v))]))); } 
/// Section Widget
Widget _buildPasswordField(BuildContext context) { return CustomTextFormField(controller: passwordFieldController, hintText: "Old Password", textInputType: TextInputType.visiblePassword, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 26.v, 16.h, 24.v), child: CustomImageView(imagePath: ImageConstant.imgOfferGray800, height: 10.v, width: 17.h)), suffixConstraints: BoxConstraints(maxHeight: 60.v), obscureText: true, contentPadding: EdgeInsets.only(left: 20.h, top: 17.v, bottom: 17.v)); } 
/// Section Widget
Widget _buildNewPasswordField(BuildContext context) { return CustomTextFormField(controller: newPasswordFieldController, hintText: "New Password", textInputType: TextInputType.visiblePassword, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 26.v, 16.h, 24.v), child: CustomImageView(imagePath: ImageConstant.imgOfferGray800, height: 10.v, width: 17.h)), suffixConstraints: BoxConstraints(maxHeight: 60.v), obscureText: true, contentPadding: EdgeInsets.only(left: 20.h, top: 17.v, bottom: 17.v)); } 
/// Section Widget
Widget _buildConfirmPasswordField(BuildContext context) { return CustomTextFormField(controller: confirmPasswordFieldController, hintText: "Confirm Password", textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 26.v, 16.h, 24.v), child: CustomImageView(imagePath: ImageConstant.imgOfferGray800, height: 10.v, width: 17.h)), suffixConstraints: BoxConstraints(maxHeight: 60.v), obscureText: true, contentPadding: EdgeInsets.only(left: 20.h, top: 17.v, bottom: 17.v)); } 
/// Section Widget
Widget _buildSaveButton(BuildContext context) { return CustomElevatedButton(text: "Save"); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
