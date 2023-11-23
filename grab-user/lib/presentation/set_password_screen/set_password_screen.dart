import 'package:flutter/material.dart';
import 'package:team_grab/core/app_export.dart';
import 'package:team_grab/widgets/app_bar/appbar_leading_image.dart';
import 'package:team_grab/widgets/app_bar/appbar_subtitle.dart';
import 'package:team_grab/widgets/app_bar/custom_app_bar.dart';
import 'package:team_grab/widgets/custom_elevated_button.dart';
import 'package:team_grab/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SetPasswordScreen extends StatelessWidget {
  SetPasswordScreen({Key? key}) : super(key: key);

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.h, vertical: 22.v),
                    child: Column(children: [
                      Text("Set password",
                          style: theme.textTheme.headlineSmall),
                      SizedBox(height: 8.v),
                      Text("Set your password",
                          style: CustomTextStyles.bodyLargeGray500),
                      SizedBox(height: 37.v),
                      CustomTextFormField(
                          controller: passwordController,
                          hintText: "Enter Your Password",
                          textInputType: TextInputType.visiblePassword,
                          suffix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 26.v, 16.h, 24.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgOffer,
                                  height: 10.v,
                                  width: 17.h)),
                          suffixConstraints: BoxConstraints(maxHeight: 60.v),
                          obscureText: true,
                          contentPadding: EdgeInsets.only(
                              left: 20.h, top: 17.v, bottom: 17.v)),
                      SizedBox(height: 20.v),
                      CustomTextFormField(
                          controller: confirmpasswordController,
                          hintText: "Confirm Password",
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          suffix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 26.v, 16.h, 24.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgOffer,
                                  height: 10.v,
                                  width: 17.h)),
                          suffixConstraints: BoxConstraints(maxHeight: 60.v),
                          obscureText: true,
                          contentPadding: EdgeInsets.only(
                              left: 20.h, top: 17.v, bottom: 17.v)),
                      SizedBox(height: 9.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Atleast 1 number or a special character",
                              style: CustomTextStyles.titleSmallGray50001)),
                      SizedBox(height: 41.v),
                      CustomElevatedButton(text: "Register"),
                      SizedBox(height: 5.v)
                    ])))));
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
        title:
            AppbarSubtitle(text: "Back", margin: EdgeInsets.only(left: 5.h)));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
