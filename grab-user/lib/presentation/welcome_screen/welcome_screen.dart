import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:team_grab/core/app_export.dart';
import 'package:team_grab/presentation/about_us_screen/about_us_screen.dart';
import 'package:team_grab/presentation/enable_location_dialog/enable_location_dialog.dart';
import 'package:team_grab/presentation/home_screen_transport_container_screen/home_screen_transport_container_screen.dart';
import 'package:team_grab/presentation/redirect_home_screen_dialog/redirect_home_screen_dialog.dart';
import 'package:team_grab/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:team_grab/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:team_grab/widgets/custom_elevated_button.dart';
import 'package:team_grab/widgets/custom_outlined_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 70.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 15.h,
                      right: 15.h,
                      bottom: 52.v,
                    ),
                    child: Column(
                      children: [
                        _buildWelcomeSection(context),
                        SizedBox(height: 37.v),
                        Text(
                          "Chào mừng  ",
                          style: theme.textTheme.headlineSmall,
                        ),
                        SizedBox(height: 8.v),
                        Text(
                          "Chúng tôi sẽ đưa bạn tới bất kì đâu!",
                          style: CustomTextStyles.bodyLargeGray500,
                        ),
                        SizedBox(height: 189.v),
                        CustomElevatedButton(
                          text: "Đăng kí",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpScreen()));
                          },
                        ),
                        SizedBox(height: 20.v),
                        CustomOutlinedButton(
                          text: "Đăng nhập",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignInScreen()));
                          },
                          buttonTextStyle: CustomTextStyles.titleMediumPrimary,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWelcomeSection(BuildContext context) {
    return Container(
      width: 356.h,
      margin: EdgeInsets.only(
        left: 3.h,
        right: 2.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 55.h,
        vertical: 14.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgWelcome,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 8.v),
          CustomImageView(
            imagePath: ImageConstant.imgVector,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(left: 77.h),
          ),
          SizedBox(height: 104.v),
          CustomImageView(
            imagePath: ImageConstant.imgAvatar,
            height: 109.v,
            width: 216.h,
          ),
        ],
      ),
    );
  }
}
