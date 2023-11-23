import 'package:flutter/material.dart';
import 'package:team_grab/core/app_export.dart';
import 'package:team_grab/widgets/app_bar/appbar_leading_image.dart';
import 'package:team_grab/widgets/app_bar/appbar_subtitle.dart';
import 'package:team_grab/widgets/app_bar/appbar_title.dart';
import 'package:team_grab/widgets/app_bar/custom_app_bar.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: 359.h,
                margin: EdgeInsets.fromLTRB(20.h, 24.v, 14.h, 24.v),
                child: Text(
                    "Professional Rideshare Platform. Here we will provide you only interesting content, which you will like very much. We're dedicated to providing you the best of Rideshare, with a focus on dependability and Earning. We're working to turn our passion for Rideshare into a booming online website. We hope you enjoy our Rideshare as much as we enjoy offering them to you. I will keep posting more important posts on my Website for all of you. Please give your support and love.Professional Rideshare Platform. Here we will provide you only interesting content, which you will like very much. We're dedicated to providing you the best of Rideshare, with a focus on dependability and Earning. We're working to turn our passion for Rideshare into a booming online website. We hope you enjoy our Rideshare as much as we enjoy offering them to you. I will keep posting more important posts on my Website for all of you. Please give your support and love.",
                    maxLines: 20,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.justify,
                    style:
                        theme.textTheme.bodyMedium!.copyWith(height: 1.57)))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 32.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftGray900,
            margin: EdgeInsets.only(left: 8.h, top: 16.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Row(children: [
              AppbarSubtitle(
                  text: "Back", margin: EdgeInsets.only(bottom: 1.v)),
              AppbarTitle(text: "About Us", margin: EdgeInsets.only(left: 79.h))
            ])));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
