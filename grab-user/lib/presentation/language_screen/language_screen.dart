import '../language_screen/widgets/languagelist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:team_grab/core/app_export.dart';
import 'package:team_grab/widgets/app_bar/appbar_leading_image.dart';
import 'package:team_grab/widgets/app_bar/appbar_subtitle.dart';
import 'package:team_grab/widgets/app_bar/appbar_title.dart';
import 'package:team_grab/widgets/app_bar/custom_app_bar.dart';
import 'package:team_grab/widgets/custom_elevated_button.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 15.v),
                child: Column(children: [
                  SizedBox(height: 21.v),
                  _buildLanguageList(context)
                ])),
            bottomNavigationBar: _buildSaveButton(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 32.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftGray900,
            margin: EdgeInsets.only(left: 8.h, top: 14.v, bottom: 17.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Row(children: [
              AppbarSubtitle(
                  text: "Back", margin: EdgeInsets.only(bottom: 3.v)),
              AppbarTitle(
                  text: "Change Language",
                  margin: EdgeInsets.only(left: 35.h, top: 1.v))
            ])));
  }

  /// Section Widget
  Widget _buildLanguageList(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 16.v);
                },
                itemCount: 8,
                itemBuilder: (context, index) {
                  return LanguagelistItemWidget();
                })));
  }

  /// Section Widget
  Widget _buildSaveButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Save",
        margin: EdgeInsets.only(left: 15.h, right: 16.h, bottom: 34.v));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
