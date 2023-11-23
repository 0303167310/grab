import 'package:flutter/material.dart';
import 'package:team_grab/core/app_export.dart';
import 'package:team_grab/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class CancelRideOneDialog extends StatelessWidget {
  const CancelRideOneDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 361.h,
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCross,
            height: 24.adaptSize,
            width: 24.adaptSize,
            radius: BorderRadius.vertical(
              bottom: Radius.circular(30.h),
            ),
            alignment: Alignment.centerRight,
          ),
          SizedBox(height: 28.v),
          CustomImageView(
            imagePath: ImageConstant.imgDowncastFaceW,
            height: 106.adaptSize,
            width: 106.adaptSize,
          ),
          SizedBox(height: 22.v),
          SizedBox(
            width: 213.h,
            child: Text(
              "We're so sad about your cancellation",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleLarge!.copyWith(
                height: 1.27,
              ),
            ),
          ),
          Container(
            width: 329.h,
            margin: EdgeInsets.symmetric(horizontal: 5.h),
            child: Text(
              "We will continue to improve our service & satify you on the next trip.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.labelLargeBluegray400.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 22.v),
          CustomElevatedButton(
            text: "Back Home",
          ),
          SizedBox(height: 20.v),
        ],
      ),
    );
  }
}
