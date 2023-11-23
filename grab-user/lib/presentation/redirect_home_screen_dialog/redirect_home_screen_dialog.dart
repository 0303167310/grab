import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:team_grab/core/app_export.dart';
import 'package:team_grab/presentation/enable_location_dialog/enable_location_dialog.dart';
import 'package:team_grab/presentation/location_screen_input_screen/location_screen_input_screen.dart';
import 'package:team_grab/presentation/set_new_password_screen/set_new_password_screen.dart';
import 'package:team_grab/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:team_grab/presentation/sign_up_screen/sign_up_screen.dart';

// ignore_for_file: must_be_immutable

class RedirectHomeScreen extends StatelessWidget {
  const RedirectHomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.green, // Set your preferred shade of blue here
          ),
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 11.h,
            top: 152.v,
            right: 11.h,
          ),
          child: Column(
            children: [
              SizedBox(height: 5.v),
              Container(
                width: 361.h,
                margin: EdgeInsets.only(right: 10.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 9.v,
                ),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                  border: Border.all(
                    color: Colors.black, // Màu viền
                    width: 2.0, // Độ dày của viền
                  ),
                ),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgCross,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      radius: BorderRadius.vertical(
                        bottom: Radius.circular(30.h),
                      ),
                      alignment: Alignment.centerRight,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInScreen()));
                      },
                    ),
                    SizedBox(height: 45.v),
                    Container(
                      height: 124.adaptSize,
                      width: 124.adaptSize,
                      padding: EdgeInsets.symmetric(
                        horizontal: 34.h,
                        vertical: 41.v,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: fs.Svg(
                            ImageConstant.imgGroup6476,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCheck,
                        height: 41.v,
                        width: 55.h,
                        alignment: Alignment.center,
                      ),
                    ),
                    SizedBox(height: 23.v),
                    Text(
                      "Congratulations ",
                      style: theme.textTheme.titleLarge,
                    ),
                    SizedBox(height: 2.v),
                    Container(
                      width: 242.h,
                      margin: EdgeInsets.only(
                        left: 48.h,
                        right: 49.h,
                      ),
                      child: Text(
                        "Your account is ready to use. You will be redirected to the Home Page in a few seconds.",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.labelLarge!.copyWith(
                          height: 1.50,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgInfinity1s200px,
                      height: 56.v,
                      width: 100.h,
                    ),
                    SizedBox(height: 69.v),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
