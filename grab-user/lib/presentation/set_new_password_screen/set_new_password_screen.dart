import 'package:flutter/material.dart';
import 'package:team_grab/core/app_export.dart';
import 'package:team_grab/presentation/redirect_home_screen_dialog/redirect_home_screen_dialog.dart';
import 'package:team_grab/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:team_grab/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:team_grab/widgets/app_bar/appbar_leading_image.dart';
import 'package:team_grab/widgets/app_bar/appbar_subtitle.dart';
import 'package:team_grab/widgets/app_bar/custom_app_bar.dart';
import 'package:team_grab/widgets/custom_elevated_button.dart';
import 'package:team_grab/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SetNewPasswordScreen extends StatelessWidget {
  SetNewPasswordScreen({Key? key}) : super(key: key);

  TextEditingController newpasswordController = TextEditingController();

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
                      Text("Đặt mật khẩu mới",
                          style: CustomTextStyles.headlineSmallGray800_1),
                      SizedBox(height: 8.v),
                      Text("Đặt mật khẩu mới của bạn",
                          style: CustomTextStyles.bodyLargeGray500),
                      SizedBox(height: 37.v),
                      CustomTextFormField(
                          controller: newpasswordController,
                          hintText: "Nhập mật khẩu ",
                          textInputType: TextInputType.visiblePassword,
                          suffix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 26.v, 16.h, 24.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgOfferGray400,
                                  height: 10.v,
                                  width: 17.h)),
                          suffixConstraints: BoxConstraints(maxHeight: 60.v),
                          obscureText: true,
                          contentPadding: EdgeInsets.only(
                              left: 20.h, top: 17.v, bottom: 17.v)),
                      SizedBox(height: 20.v),
                      CustomTextFormField(
                          controller: confirmpasswordController,
                          hintText: "Nhập lại mật khẩu ",
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          suffix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 26.v, 16.h, 24.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgOfferGray400,
                                  height: 10.v,
                                  width: 17.h)),
                          suffixConstraints: BoxConstraints(maxHeight: 60.v),
                          obscureText: true,
                          contentPadding: EdgeInsets.only(
                              left: 20.h, top: 17.v, bottom: 17.v)),
                      SizedBox(height: 9.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Có ít nhất một kí tự đặc biệt",
                              style: CustomTextStyles.titleSmallGray50001)),
                      SizedBox(height: 41.v),
                      CustomElevatedButton(
                        text: "Lưu",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RedirectHomeScreen()));
                        },
                      ),
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
        title: AppbarSubtitle(
            text: "Trở lại", margin: EdgeInsets.only(left: 5.h)));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
