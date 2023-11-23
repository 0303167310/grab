import 'package:flutter/material.dart';
import 'package:team_grab/core/app_export.dart';

// ignore: must_be_immutable
class AddresslistItemWidget extends StatelessWidget {
  const AddresslistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLocationIndigo10024x24,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "Office",
                    style: CustomTextStyles.titleMediumGray800Bold,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgClosePrimarycontainer,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(bottom: 4.v),
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
