import 'package:flutter/material.dart';
import 'package:team_grab/core/app_export.dart';

// ignore: must_be_immutable
class OfficeItemWidget extends StatelessWidget {
  const OfficeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMapGray700,
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
              Padding(
                padding: EdgeInsets.only(
                  left: 243.h,
                  bottom: 4.v,
                ),
                child: Text(
                  "2.7km",
                  style: CustomTextStyles.titleSmallGray700,
                ),
              ),
            ],
          ),
          SizedBox(height: 1.v),
          Padding(
            padding: EdgeInsets.only(left: 30.h),
            child: Text(
              "2972 Westheimer Rd. Santa Ana, Illinois 85486 ",
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
