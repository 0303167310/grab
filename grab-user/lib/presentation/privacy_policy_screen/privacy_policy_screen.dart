import 'package:flutter/material.dart';import 'package:team_grab/core/app_export.dart';import 'package:team_grab/widgets/app_bar/appbar_leading_image.dart';import 'package:team_grab/widgets/app_bar/appbar_subtitle.dart';import 'package:team_grab/widgets/app_bar/appbar_title.dart';import 'package:team_grab/widgets/app_bar/custom_app_bar.dart';class PrivacyPolicyScreen extends StatelessWidget {const PrivacyPolicyScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 22.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Privacy Policy for Ride share", style: CustomTextStyles.titleMediumGray80018), SizedBox(height: 16.v), SizedBox(width: 362.h, child: RichText(text: TextSpan(children: [TextSpan(text: "At Rideshare, accessible from rideshare.com, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by rideshare and how we use it.\nIf you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.\nThis Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in rideshare. This policy is not applicable to any information collected offline or via channels other than this website. Our Privacy Policy was created with the help of the ", style: CustomTextStyles.bodyLargeErrorContainer_1.copyWith(height: 1.44)), TextSpan(text: "Free Privacy Policy Generator.", style: CustomTextStyles.bodyLargeErrorContainer_1)]), textAlign: TextAlign.left)), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 32.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftGray900, margin: EdgeInsets.only(left: 8.h, top: 14.v, bottom: 17.v), onTap: () {onTapArrowLeft(context);}), title: Padding(padding: EdgeInsets.only(left: 5.h), child: Row(children: [AppbarSubtitle(text: "Back", margin: EdgeInsets.only(bottom: 3.v)), AppbarTitle(text: "Privacy Policy", margin: EdgeInsets.only(left: 58.h, top: 1.v))]))); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
