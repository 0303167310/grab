import 'package:flutter/material.dart';
import 'package:team_grab/core/app_export.dart';
import 'package:team_grab/presentation/set_new_password_screen/set_new_password_screen.dart';
import 'package:team_grab/presentation/set_password_screen/set_password_screen.dart';
import 'package:team_grab/widgets/app_bar/appbar_leading_image.dart';
import 'package:team_grab/widgets/app_bar/appbar_subtitle.dart';
import 'package:team_grab/widgets/app_bar/custom_app_bar.dart';
import 'package:team_grab/widgets/custom_elevated_button.dart';
import 'package:team_grab/widgets/custom_pin_code_text_field.dart';

class VerifyOtpScreen extends StatelessWidget {
  const VerifyOtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 18.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 15.h, right: 15.h, bottom: 5.v),
                        child: Column(children: [
                          Text("Xác minh số điện thoại",
                              style: theme.textTheme.headlineSmall),
                          SizedBox(height: 11.v),
                          Text("Nhập mã otp của bạn",
                              style: CustomTextStyles.bodyLargeGray500),
                          SizedBox(height: 37.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 36.h),
                              child: CustomPinCodeTextField(
                                  context: context, onChanged: (value) {})),
                          SizedBox(height: 20.v),
                          RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Không nhận được mã? ",
                                    style: theme.textTheme.titleMedium),
                                TextSpan(
                                    text: "Gửi lại mã",
                                    style:
                                        CustomTextStyles.titleMediumPrimary_1)
                              ]),
                              textAlign: TextAlign.left),
                          SizedBox(height: 238.v),
                          CustomElevatedButton(
                            text: " Xác minh",
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          SetNewPasswordScreen()));
                            },
                          )
                        ]))))));
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
