import '../bank_screen/widgets/paymentcardlist1_item_widget.dart';import 'package:flutter/material.dart';import 'package:team_grab/core/app_export.dart';import 'package:team_grab/widgets/app_bar/appbar_leading_image.dart';import 'package:team_grab/widgets/app_bar/appbar_subtitle.dart';import 'package:team_grab/widgets/app_bar/appbar_title.dart';import 'package:team_grab/widgets/app_bar/custom_app_bar.dart';import 'package:team_grab/widgets/custom_drop_down.dart';import 'package:team_grab/widgets/custom_elevated_button.dart';import 'package:team_grab/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class BankScreen extends StatelessWidget {BankScreen({Key? key}) : super(key: key);

List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

TextEditingController inputController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 22.v), child: Column(children: [Padding(padding: EdgeInsets.only(left: 10.h, right: 11.h), child: CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 27.v, 16.h, 25.v), child: CustomImageView(imagePath: ImageConstant.imgArrowDown, height: 7.v, width: 14.h)), hintText: "Select Payment Method", items: dropdownItemList, onChanged: (value) {})), SizedBox(height: 16.v), Padding(padding: EdgeInsets.only(left: 10.h, right: 11.h), child: CustomTextFormField(controller: inputController, hintText: "Account Number", textInputAction: TextInputAction.done, textInputType: TextInputType.number)), SizedBox(height: 24.v), Opacity(opacity: 0.4, child: CustomElevatedButton(text: "Save Payment Method", margin: EdgeInsets.only(left: 21.h), buttonStyle: CustomButtonStyles.fillSecondaryContainer, alignment: Alignment.centerRight)), SizedBox(height: 30.v), _buildPaymentCardList(context)]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 32.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftGray900, margin: EdgeInsets.only(left: 8.h, top: 15.v, bottom: 16.v), onTap: () {onTapArrowLeft(context);}), title: Padding(padding: EdgeInsets.only(left: 5.h), child: Row(children: [AppbarSubtitle(text: "Back", margin: EdgeInsets.only(bottom: 1.v)), AppbarTitle(text: "Amount", margin: EdgeInsets.only(left: 83.h))]))); } 
/// Section Widget
Widget _buildPaymentCardList(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 10.h), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 8.v);}, itemCount: 4, itemBuilder: (context, index) {return Paymentcardlist1ItemWidget();})); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
