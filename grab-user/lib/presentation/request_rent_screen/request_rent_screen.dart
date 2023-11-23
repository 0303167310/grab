import '../request_rent_screen/widgets/eightthousandninehundredsevent_item_widget.dart';import 'package:flutter/material.dart';import 'package:team_grab/core/app_export.dart';import 'package:team_grab/widgets/app_bar/appbar_leading_image.dart';import 'package:team_grab/widgets/app_bar/appbar_subtitle.dart';import 'package:team_grab/widgets/app_bar/custom_app_bar.dart';import 'package:team_grab/widgets/custom_elevated_button.dart';class RequestRentScreen extends StatelessWidget {const RequestRentScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 9.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Select payment method", style: CustomTextStyles.headlineSmallSemiBold), SizedBox(height: 2.v), Text("Select payment method you want to use", style: CustomTextStyles.titleSmallGray400), SizedBox(height: 32.v), _buildEightThousandNineHundredSevent(context)])), bottomNavigationBar: _buildConfirmRide(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 32.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftGray900, margin: EdgeInsets.only(left: 8.h, top: 16.v, bottom: 15.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitle(text: "Back", margin: EdgeInsets.only(left: 5.h))); } 
/// Section Widget
Widget _buildEightThousandNineHundredSevent(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(right: 1.h), child: ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 8.v);}, itemCount: 7, itemBuilder: (context, index) {return EightthousandninehundredseventItemWidget();}))); } 
/// Section Widget
Widget _buildConfirmRide(BuildContext context) { return CustomElevatedButton(text: "Confirm Ride", margin: EdgeInsets.only(left: 15.h, right: 16.h, bottom: 27.v)); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
