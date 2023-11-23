import 'package:flutter/material.dart';import 'package:team_grab/core/app_export.dart';import 'package:team_grab/widgets/app_bar/appbar_leading_image.dart';import 'package:team_grab/widgets/app_bar/appbar_subtitle.dart';import 'package:team_grab/widgets/app_bar/appbar_title.dart';import 'package:team_grab/widgets/app_bar/custom_app_bar.dart';import 'package:team_grab/widgets/custom_elevated_button.dart';import 'package:team_grab/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class ContactUsScreen extends StatelessWidget {ContactUsScreen({Key? key}) : super(key: key);

TextEditingController nameEditTextController = TextEditingController();

TextEditingController emailEditTextController = TextEditingController();

TextEditingController mobileNumberEditTextController = TextEditingController();

TextEditingController writeYourTextEditTextController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 21.v), child: Column(children: [Text("Contact us for Ride share", style: CustomTextStyles.titleMediumGray80018), SizedBox(height: 14.v), Text("Address", style: CustomTextStyles.titleMediumGray800_1), SizedBox(height: 1.v), Container(width: 332.h, margin: EdgeInsets.symmetric(horizontal: 15.h), child: Text("House# 72, Road# 21, Banani, Dhaka-1213 (near Banani Bidyaniketon School &\n College, beside University of South Asia)\n\nCall : 13301 (24/7)\nEmail : support@pathao.com", maxLines: 6, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.labelLargeBluegray400.copyWith(height: 1.50))), SizedBox(height: 29.v), Text("Send Message", style: CustomTextStyles.titleMediumGray800_1), SizedBox(height: 13.v), _buildNameEditText(context), SizedBox(height: 16.v), _buildEmailEditText(context), SizedBox(height: 16.v), _buildMobileNumberRow(context), SizedBox(height: 16.v), _buildWriteYourTextEditText(context), SizedBox(height: 5.v)]))), bottomNavigationBar: _buildSendMessageButton(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 32.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftGray900, margin: EdgeInsets.only(left: 8.h, top: 15.v, bottom: 16.v), onTap: () {onTapArrowLeft(context);}), title: Padding(padding: EdgeInsets.only(left: 5.h), child: Row(children: [AppbarSubtitle(text: "Back", margin: EdgeInsets.only(bottom: 1.v)), AppbarTitle(text: "Contact Us", margin: EdgeInsets.only(left: 69.h))]))); } 
/// Section Widget
Widget _buildNameEditText(BuildContext context) { return CustomTextFormField(controller: nameEditTextController, hintText: "Name"); } 
/// Section Widget
Widget _buildEmailEditText(BuildContext context) { return CustomTextFormField(controller: emailEditTextController, hintText: "Email", textInputType: TextInputType.emailAddress); } 
/// Section Widget
Widget _buildMobileNumberEditText(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 4.h, top: 11.v, bottom: 7.v), child: CustomTextFormField(width: 216.h, controller: mobileNumberEditTextController, hintText: "Your mobile number", textInputType: TextInputType.phone)); } 
/// Section Widget
Widget _buildMobileNumberRow(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 8.v), decoration: AppDecoration.outlineGray, child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 44.v, width: 124.h, child: Stack(alignment: Alignment.centerRight, children: [Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.only(bottom: 6.v), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgGroup13, height: 18.v, width: 25.h, margin: EdgeInsets.only(bottom: 6.v)), CustomImageView(imagePath: ImageConstant.imgArrowDown, height: 7.v, width: 14.h, margin: EdgeInsets.only(left: 14.h, top: 3.v, bottom: 13.v)), Padding(padding: EdgeInsets.only(left: 26.h), child: Text("+880", style: CustomTextStyles.titleMediumGray90001))]))), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(right: 57.h), child: SizedBox(height: 44.v, child: VerticalDivider(width: 1.h, thickness: 1.v))))])), _buildMobileNumberEditText(context)])); } 
/// Section Widget
Widget _buildWriteYourTextEditText(BuildContext context) { return CustomTextFormField(controller: writeYourTextEditTextController, hintText: "Write your text", hintStyle: CustomTextStyles.bodyMediumBluegray100, textInputAction: TextInputAction.done, maxLines: 5, contentPadding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 18.v)); } 
/// Section Widget
Widget _buildSendMessageButton(BuildContext context) { return CustomElevatedButton(text: "Send Message", margin: EdgeInsets.only(left: 15.h, right: 16.h, bottom: 34.v)); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
