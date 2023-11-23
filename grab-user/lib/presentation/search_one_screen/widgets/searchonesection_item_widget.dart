import 'package:flutter/material.dart';
import 'package:team_grab/core/app_export.dart';

// ignore: must_be_immutable
class SearchonesectionItemWidget extends StatelessWidget {
  const SearchonesectionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 3.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgClock2,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(top: 4.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Text(
                    "Đại học Khoa Học Tự Nhiên",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(bottom: 5.v),
                  child: Text(
                    "0.1km",
                    style: CustomTextStyles.titleSmallGray700,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.h),
            child: Text(
              "227 Đ.Nguyễn Văn cừ,Quận 5,TPHCM",
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
