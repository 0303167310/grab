import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:team_grab/core/app_export.dart';
import 'package:team_grab/presentation/settings_screen/settings_screen.dart';
import 'package:team_grab/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:team_grab/presentation/verify_otp_screen/verify_otp_screen.dart';
import 'package:team_grab/widgets/app_bar/appbar_leading_image.dart';
import 'package:team_grab/widgets/app_bar/appbar_subtitle.dart';
import 'package:team_grab/widgets/app_bar/custom_app_bar.dart';
import 'package:team_grab/widgets/custom_drop_down.dart';
import 'package:team_grab/widgets/custom_elevated_button.dart';
import 'package:team_grab/widgets/custom_icon_button.dart';
import 'package:team_grab/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController inputController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController yourMobileNumberController = TextEditingController();

  List<String> dropdownItemList = ["Nam", "Nữ", "Khác"];

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
                    padding: EdgeInsets.only(top: 20.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 15.h, right: 15.h, bottom: 5.v),
                        child: Column(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Đăng kí",
                                  style: theme.textTheme.headlineSmall)),
                          SizedBox(height: 18.v),
                          _buildInput(context),
                          SizedBox(height: 20.v),
                          _buildEmail(context),
                          SizedBox(height: 20.v),
                          _buildNinetyEight(context),
                          SizedBox(height: 20.v),
                          CustomDropDown(
                              icon: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      30.h, 27.v, 16.h, 25.v),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgArrowDown,
                                      height: 7.v,
                                      width: 14.h)),
                              hintText: "Giới tính",
                              items: dropdownItemList,
                              onChanged: (value) {}),
                          SizedBox(height: 20.v),
                          _buildLocation(context),
                          SizedBox(height: 18.v),
                          _buildDangKy(context),
                          SizedBox(height: 18.v),
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
                          SizedBox(height: 54.v),
                          RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Bạn đã có tài khoản",
                                    style: theme.textTheme.titleMedium),
                                TextSpan(
                                    text: "?",
                                    style: theme.textTheme.titleMedium),
                                TextSpan(text: " "),
                                TextSpan(
                                    text: "Đăng nhập",
                                    style:
                                        CustomTextStyles.titleMediumPrimary_1,
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SignInScreen()));
                                      })
                              ]),
                              textAlign: TextAlign.left)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 32.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 8.h, top: 15.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitle(
            text: "Trở lại", margin: EdgeInsets.only(left: 5.h)));
  }

  /// Section Widget
  Widget _buildInput(BuildContext context) {
    return CustomTextFormField(
        controller: inputController, hintText: "Họ và tên");
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "Email",
        textInputType: TextInputType.emailAddress);
  }

  /// Section Widget
  Widget _buildYourMobileNumber(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 12.v, bottom: 6.v),
        child: CustomTextFormField(
            width: 216.h,
            controller: yourMobileNumberController,
            hintText: "Số điện thoại của bạn",
            textInputAction: TextInputAction.done));
  }

  /// Section Widget
  Widget _buildNinetyEight(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 8.v),
        decoration: AppDecoration.outlineGray,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          SizedBox(
              height: 44.v,
              width: 112.h,
              child: Stack(alignment: Alignment.centerRight, children: [
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 6.v),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 20.v,
                                  width: 30.h,
                                  margin: EdgeInsets.only(bottom: 6.v),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8.h, vertical: 1.v),
                                  decoration: AppDecoration.fillRedA,
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgStar2,
                                      height: 13.adaptSize,
                                      width: 13.adaptSize,
                                      alignment: Alignment.topRight)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgArrowDown,
                                  height: 7.v,
                                  width: 14.h,
                                  margin: EdgeInsets.only(
                                      left: 8.h, top: 5.v, bottom: 13.v)),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 26.h, top: 2.v),
                                  child: Text("+84",
                                      style: CustomTextStyles
                                          .titleMediumGray90001))
                            ]))),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                        padding: EdgeInsets.only(right: 46.h),
                        child: SizedBox(
                            height: 44.v,
                            child:
                                VerticalDivider(width: 1.h, thickness: 1.v))))
              ])),
          _buildYourMobileNumber(context)
        ]));
  }

  /// Section Widget
  Widget _buildLocation(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 3.h, right: 12.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(top: 3.v, bottom: 17.v),
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgCircle,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        alignment: Alignment.center),
                    CustomImageView(
                        imagePath: ImageConstant.imgLocationGreen60001,
                        height: 6.v,
                        width: 9.h,
                        alignment: Alignment.center)
                  ])),
              Expanded(
                  child: Container(
                      width: 315.h,
                      margin: EdgeInsets.only(left: 13.h),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "By signing up. you agree to the ",
                                style: theme.textTheme.labelLarge),
                            TextSpan(
                                text: "Terms of service",
                                style: CustomTextStyles.labelLargeAmberA400),
                            TextSpan(
                                text: " and\n",
                                style: theme.textTheme.labelLarge),
                            TextSpan(
                                text: "Privacy policy.",
                                style: CustomTextStyles.labelLargeAmberA400)
                          ]),
                          textAlign: TextAlign.left)))
            ]));
  }

  /// Section Widget
  Widget _buildDangKy(BuildContext context) {
    return CustomElevatedButton(
      text: "Đăng ký",
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => VerifyOtpScreen()));
      },
    );
  }

  /// Section Widget
  Widget _buildEight(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 9.h),
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
