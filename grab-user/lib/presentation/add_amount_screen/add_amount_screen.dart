import '../add_amount_screen/widgets/paymentcardlist_item_widget.dart';import 'package:flutter/material.dart';import 'package:team_grab/core/app_export.dart';import 'package:team_grab/widgets/app_bar/appbar_leading_image.dart';import 'package:team_grab/widgets/app_bar/appbar_subtitle.dart';import 'package:team_grab/widgets/app_bar/appbar_title.dart';import 'package:team_grab/widgets/app_bar/custom_app_bar.dart';import 'package:team_grab/widgets/custom_elevated_button.dart';import 'package:team_grab/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class AddAmountScreen extends StatelessWidget {AddAmountScreen({Key? key}) : super(key: key);

TextEditingController amountController = TextEditingController();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 22.v), child: Column(children: [CustomTextFormField(controller: amountController, hintText: "Enter Amount", textInputAction: TextInputAction.done), SizedBox(height: 10.v), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(right: 1.h), child: Text("Add payment Method", style: CustomTextStyles.titleSmallIndigoA700))), SizedBox(height: 29.v), Align(alignment: Alignment.centerLeft, child: Text("Select Payment Method", style: CustomTextStyles.titleMediumGray800)), SizedBox(height: 27.v), _buildPaymentCardList(context)])), bottomNavigationBar: _buildConfirmButton(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 32.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftGray900, margin: EdgeInsets.only(left: 8.h, top: 15.v, bottom: 16.v), onTap: () {onTapArrowLeft(context);}), title: Padding(padding: EdgeInsets.only(left: 5.h), child: Row(children: [AppbarSubtitle(text: "Back", margin: EdgeInsets.only(bottom: 1.v)), AppbarTitle(text: "Amount", margin: EdgeInsets.only(left: 83.h))]))); } 
/// Section Widget
Widget _buildPaymentCardList(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 1.h), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 8.v);}, itemCount: 4, itemBuilder: (context, index) {return PaymentcardlistItemWidget();})); } 
/// Section Widget
Widget _buildConfirmButton(BuildContext context) { return CustomElevatedButton(text: "Confirm", margin: EdgeInsets.only(left: 15.h, right: 16.h, bottom: 42.v)); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
