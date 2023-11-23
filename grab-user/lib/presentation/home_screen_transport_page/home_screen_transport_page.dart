import 'package:flutter/material.dart';
import 'package:team_grab/core/app_export.dart';
import 'package:team_grab/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:team_grab/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:team_grab/widgets/app_bar/custom_app_bar.dart';
import 'package:team_grab/widgets/custom_elevated_button.dart';
import 'package:team_grab/widgets/custom_icon_button.dart';
import 'package:team_grab/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class HomeScreenTransportScreen extends StatelessWidget {
  HomeScreenTransportScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimaryContainer,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup289,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(
              left: 14.h,
              top: 101.v,
              right: 14.h,
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 69.h,
                    right: 72.h,
                  ),
                  padding: EdgeInsets.all(34.h),
                  decoration: AppDecoration.fillAmberA.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder112,
                  ),
                  child: Container(
                    padding: EdgeInsets.all(40.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.circleBorder77,
                    ),
                    child: Container(
                      height: 72.adaptSize,
                      width: 72.adaptSize,
                      padding: EdgeInsets.all(22.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusStyle.circleBorder36,
                      ),
                      child: CustomIconButton(
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        padding: EdgeInsets.all(5.h),
                        decoration: IconButtonStyleHelper.fillAmberA,
                        alignment: Alignment.center,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgLocation,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 67.v),
                Padding(
                  padding: EdgeInsets.only(right: 1.h),
                  child: CustomIconButton(
                    height: 34.adaptSize,
                    width: 34.adaptSize,
                    padding: EdgeInsets.all(5.h),
                    decoration: IconButtonStyleHelper.fillOnPrimaryContainer,
                    alignment: Alignment.centerRight,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgLocationTarhget,
                    ),
                  ),
                ),
                SizedBox(height: 25.v),
                _buildPlaceIndicateTwo(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 49.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgMenu,
        margin: EdgeInsets.only(
          left: 15.h,
          top: 11.v,
          bottom: 11.v,
        ),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgSearch,
          margin: EdgeInsets.only(
            left: 15.h,
            top: 11.v,
            right: 11.h,
          ),
        ),
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.only(
            left: 11.h,
            top: 11.v,
            right: 26.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPlaceIndicateTwo(BuildContext context) {
    return Container(
      width: 364.h,
      margin: EdgeInsets.only(right: 1.h),
      padding: EdgeInsets.symmetric(vertical: 10.v),
      decoration: AppDecoration.outlineAmber.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.h),
            child: CustomTextFormField(
              controller: searchController,
              hintText: "Bạn muốn đi đâu?",
              textInputAction: TextInputAction.done,
              prefix: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 15.v,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgSearch,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
              prefixConstraints: BoxConstraints(
                maxHeight: 54.v,
              ),
              suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 16.v, 10.h, 14.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgHeart,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 54.v,
              ),
            ),
          ),
          SizedBox(height: 15.v),
          SizedBox(
            height: 48.v,
            width: 349.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 48.v,
                    width: 336.h,
                    decoration: BoxDecoration(
                      color: appTheme.yellow50,
                      borderRadius: BorderRadius.circular(
                        8.h,
                      ),
                      border: Border.all(
                        color: appTheme.amber500,
                        width: 1.h,
                      ),
                    ),
                  ),
                ),
                CustomElevatedButton(
                  width: 349.h,
                  text: "Đặt xe",
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
