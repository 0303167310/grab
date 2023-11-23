import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:team_grab/core/app_export.dart';
import 'package:team_grab/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class ScuessfulDialog extends StatelessWidget {
  const ScuessfulDialog({Key? key})
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
          SizedBox(height: 12.v),
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
          SizedBox(height: 20.v),
          Text(
            "Add Success",
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 5.v),
          Text(
            "Your money has been add successfully ",
            style: CustomTextStyles.labelLargeBluegray400,
          ),
          SizedBox(height: 21.v),
          Text(
            "Amount",
            style: CustomTextStyles.labelLargeGray700,
          ),
          SizedBox(height: 3.v),
          Text(
            "450",
            style: theme.textTheme.displaySmall,
          ),
          SizedBox(height: 27.v),
          CustomElevatedButton(
            text: "Back Home",
          ),
          SizedBox(height: 23.v),
        ],
      ),
    );
  }
}
