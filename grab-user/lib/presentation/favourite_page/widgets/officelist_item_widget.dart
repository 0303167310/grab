import 'package:flutter/material.dart';
import 'package:team_grab/core/app_export.dart';

// ignore: must_be_immutable
class OfficelistItemWidget extends StatelessWidget {
  const OfficelistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineAmber100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLocation,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "Office",
                    style: CustomTextStyles.titleMediumGray800_1,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgDelete,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ],
            ),
          ),
          SizedBox(height: 1.v),
          Text(
            "2972 Westheimer Rd. Santa Ana, Illinois 85486 ",
            style: theme.textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
