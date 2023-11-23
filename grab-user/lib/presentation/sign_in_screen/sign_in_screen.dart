import 'package:flutter/material.dart';
import 'package:team_grab/core/app_export.dart';
import 'package:team_grab/presentation/enable_location_dialog/enable_location_dialog.dart';
import 'package:team_grab/presentation/location_screen_input_screen/location_screen_input_screen.dart';
import 'package:team_grab/widgets/app_bar/appbar_leading_image.dart';
import 'package:team_grab/widgets/app_bar/appbar_subtitle.dart';
import 'package:team_grab/widgets/app_bar/custom_app_bar.dart';
import 'package:team_grab/widgets/custom_elevated_button.dart';
import 'package:team_grab/widgets/custom_icon_button.dart';
import 'package:team_grab/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController eyebaseController = TextEditingController();

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
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 21.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 15.h, right: 15.h, bottom: 5.v),
                        child: Column(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Đăng nhập",
                                  style: theme.textTheme.headlineSmall)),
                          SizedBox(height: 24.v),
                          CustomTextFormField(
                              controller: emailController,
                              hintText: "Email hoặc Số điện thoại",
                              textInputType: TextInputType.emailAddress),
                          SizedBox(height: 20.v),
                          CustomTextFormField(
                              controller: eyebaseController,
                              hintText: "Nhập mật khẩu",
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              suffix: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      30.h, 26.v, 16.h, 24.v),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgEyebase,
                                      height: 10.v,
                                      width: 17.h)),
                              suffixConstraints:
                                  BoxConstraints(maxHeight: 60.v),
                              obscureText: true,
                              contentPadding: EdgeInsets.only(
                                  left: 20.h, top: 16.v, bottom: 16.v)),
                          SizedBox(height: 8.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: EdgeInsets.only(right: 4.h),
                                  child: Text("Quên mật khẩu?",
                                      style:
                                          CustomTextStyles.titleSmallRed500))),
                          SizedBox(height: 39.v),
                          CustomElevatedButton(
                            text: "Đăng nhập",
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          EnableLocationDialog()));
                            },
                          ),
                          SizedBox(height: 21.v),
                          _buildEight(context),
                          SizedBox(height: 18.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomIconButton(
                                    height: 48.adaptSize,
                                    width: 48.adaptSize,
                                    padding: EdgeInsets.all(15.h),
                                    decoration:
                                        IconButtonStyleHelper.outlineBlueGray,
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgTwitter)),
                                Padding(
                                    padding: EdgeInsets.only(left: 15.h),
                                    child: CustomIconButton(
                                        height: 48.adaptSize,
                                        width: 48.adaptSize,
                                        padding: EdgeInsets.all(12.h),
                                        decoration: IconButtonStyleHelper
                                            .outlineBlueGray,
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgSocialSignUpDefault))),
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.only(left: 15.h),
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: appTheme.blueGray100,
                                            width: 1.h),
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                    child: Container(
                                        height: 48.adaptSize,
                                        width: 48.adaptSize,
                                        padding: EdgeInsets.all(12.h),
                                        decoration: AppDecoration
                                            .outlineBlueGray
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8),
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgBg,
                                                  height: 21.adaptSize,
                                                  width: 21.adaptSize,
                                                  alignment: Alignment.center),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgApple,
                                                  height: 12.v,
                                                  width: 10.h,
                                                  alignment:
                                                      Alignment.topCenter,
                                                  margin:
                                                      EdgeInsets.only(top: 3.v))
                                            ])))
                              ]),
                          SizedBox(height: 29.v),
                          RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Bạn chưa có tài khoản? ",
                                    style: theme.textTheme.titleMedium),
                                TextSpan(
                                    text: "Đăng kí",
                                    style:
                                        CustomTextStyles.titleMediumPrimary_1)
                              ]),
                              textAlign: TextAlign.left)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 32.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftGray900,
            margin: EdgeInsets.only(left: 8.h, top: 15.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitle(
            text: "Trở lại", margin: EdgeInsets.only(left: 5.h)));
  }

  /// Section Widget
  Widget _buildEight(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 13.h, right: 6.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 10.v, bottom: 12.v),
                  child: SizedBox(
                      width: 156.h, child: Divider(color: appTheme.gray400))),
              Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child:
                      Text("or", style: CustomTextStyles.titleMediumGray400)),
              Padding(
                  padding: EdgeInsets.only(top: 10.v, bottom: 12.v),
                  child: SizedBox(
                      width: 163.h,
                      child: Divider(color: appTheme.gray400, indent: 7.h)))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
