import 'package:flutter/material.dart';import 'package:team_grab/core/app_export.dart';import 'package:team_grab/widgets/app_bar/appbar_leading_image.dart';import 'package:team_grab/widgets/app_bar/appbar_subtitle.dart';import 'package:team_grab/widgets/app_bar/appbar_title.dart';import 'package:team_grab/widgets/app_bar/custom_app_bar.dart';import 'package:team_grab/widgets/custom_drop_down.dart';
// ignore_for_file: must_be_immutable
class SettingsScreen extends StatelessWidget {SettingsScreen({Key? key}) : super(key: key);

List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

List<String> dropdownItemList2 = ["Item One", "Item Two", "Item Three"];

List<String> dropdownItemList3 = ["Item One", "Item Two", "Item Three"];

List<String> dropdownItemList4 = ["Item One", "Item Two", "Item Three"];

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 21.v), child: Column(children: [CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 18.v, 16.h, 17.v), child: CustomImageView(imagePath: ImageConstant.imgArrowDown, height: 14.v, width: 7.h)), hintText: "Change Password", items: dropdownItemList, contentPadding: EdgeInsets.only(left: 11.h, top: 15.v, bottom: 15.v), onChanged: (value) {}), SizedBox(height: 16.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 18.v, 16.h, 17.v), child: CustomImageView(imagePath: ImageConstant.imgArrowDown, height: 14.v, width: 7.h)), hintText: "Change Language", items: dropdownItemList1, contentPadding: EdgeInsets.only(left: 11.h, top: 15.v, bottom: 15.v), onChanged: (value) {}), SizedBox(height: 16.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 18.v, 16.h, 17.v), child: CustomImageView(imagePath: ImageConstant.imgArrowDown, height: 14.v, width: 7.h)), hintText: "Privacy Policy", items: dropdownItemList2, contentPadding: EdgeInsets.only(left: 11.h, top: 15.v, bottom: 15.v), onChanged: (value) {}), SizedBox(height: 16.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 18.v, 16.h, 17.v), child: CustomImageView(imagePath: ImageConstant.imgArrowDown, height: 14.v, width: 7.h)), hintText: "Contact Us", items: dropdownItemList3, contentPadding: EdgeInsets.only(left: 11.h, top: 15.v, bottom: 15.v), onChanged: (value) {}), SizedBox(height: 16.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 18.v, 16.h, 17.v), child: CustomImageView(imagePath: ImageConstant.imgArrowDown, height: 14.v, width: 7.h)), hintText: "Delete Account", items: dropdownItemList4, contentPadding: EdgeInsets.only(left: 11.h, top: 15.v, bottom: 15.v), onChanged: (value) {}), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 32.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftGray900, margin: EdgeInsets.only(left: 8.h, top: 14.v, bottom: 17.v), onTap: () {onTapArrowLeft(context);}), title: Padding(padding: EdgeInsets.only(left: 5.h), child: Row(children: [AppbarSubtitle(text: "Back", margin: EdgeInsets.only(bottom: 3.v)), AppbarTitle(text: "Settings", margin: EdgeInsets.only(left: 83.h, top: 1.v))]))); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
