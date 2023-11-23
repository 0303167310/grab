import 'package:flutter/material.dart';
import 'package:team_grab/core/app_export.dart';
import 'package:team_grab/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class LocationScreenConfirmBottomsheet extends StatelessWidget {
  const LocationScreenConfirmBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 14.v),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 24.adaptSize,
            width: 24.adaptSize,
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: 10.h),
          ),
          SizedBox(height: 18.v),
          Text(
            "Select address",
            style: CustomTextStyles.titleLarge20,
          ),
          SizedBox(height: 10.v),
          Divider(),
          SizedBox(height: 28.v),
          SizedBox(
            height: 111.v,
            width: 362.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: SizedBox(
                      height: 72.v,
                      child: VerticalDivider(
                        width: 1.h,
                        thickness: 1.v,
                        color: appTheme.amberA400,
                        indent: 20.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgLocationRed500,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(top: 1.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "Current location",
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 1.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "2972 Westheimer Rd. Santa Ana, Illinois 85486 ",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgLocationAmberA400,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "Office",
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(bottom: 2.v),
                            child: Text(
                              "1.1km",
                              style: CustomTextStyles.titleSmallGray700,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 2.v),
                      Padding(
                        padding: EdgeInsets.only(left: 30.h),
                        child: Text(
                          "1901 Thornridge Cir. Shiloh, Hawaii 81063",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40.v),
          CustomElevatedButton(
            text: "Confirm Location",
            margin: EdgeInsets.only(
              left: 16.h,
              right: 15.h,
            ),
          ),
          SizedBox(height: 16.v),
        ],
      ),
    );
  }
}
