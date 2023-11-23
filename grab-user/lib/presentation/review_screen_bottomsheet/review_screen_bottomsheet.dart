import 'package:flutter/material.dart';
import 'package:team_grab/core/app_export.dart';
import 'package:team_grab/widgets/custom_elevated_button.dart';
import 'package:team_grab/widgets/custom_rating_bar.dart';
import 'package:team_grab/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ReviewScreenBottomsheet extends StatelessWidget {
  ReviewScreenBottomsheet({Key? key})
      : super(
          key: key,
        );

  TextEditingController writeyourtextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 9.v,
      ),
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
          ),
          SizedBox(height: 33.v),
          CustomRatingBar(
            initialRating: 5,
          ),
          SizedBox(height: 20.v),
          Text(
            "Xuất xắc",
            style: CustomTextStyles.titleLarge20,
          ),
          SizedBox(height: 8.v),
          Text(
            "Bạn đã đánh giá An 5 sao",
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 23.v),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              right: 9.h,
            ),
            child: CustomTextFormField(
              controller: writeyourtextController,
              hintText: "Nhận xét",
              hintStyle: CustomTextStyles.bodyMediumBluegray100,
              textInputAction: TextInputAction.done,
              maxLines: 5,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 18.v,
              ),
            ),
          ),
          SizedBox(height: 24.v),
          Text(
            "Tip thêm cho tài xế",
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 21.v),
          _buildUserProfile(context),
          SizedBox(height: 12.v),
          Text(
            "Nhập số tiền khác",
            style: CustomTextStyles.labelLargeAmberA400_1,
          ),
          SizedBox(height: 19.v),
          CustomElevatedButton(
            text: "Gửi",
            margin: EdgeInsets.only(
              left: 8.h,
              right: 9.h,
            ),
          ),
          SizedBox(height: 29.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 8.h,
        right: 4.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 62.h,
            padding: EdgeInsets.symmetric(
              horizontal: 3.h,
              vertical: 16.v,
            ),
            decoration: AppDecoration.outlineGray300.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "5.000đ",
              style: theme.textTheme.titleMedium,
            ),
          ),
          Container(
            width: 62.h,
            margin: EdgeInsets.only(left: 13.h),
            padding: EdgeInsets.symmetric(vertical: 16.v),
            decoration: AppDecoration.outlineAmberA4002.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "10.000đ",
              style: CustomTextStyles.titleMediumAmberA400,
            ),
          ),
          Container(
            height: 60.v,
            width: 65.h,
            margin: EdgeInsets.only(left: 12.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 60.v,
                    width: 62.h,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.onPrimaryContainer,
                      borderRadius: BorderRadius.circular(
                        4.h,
                      ),
                      border: Border.all(
                        color: appTheme.gray300,
                        width: 1.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "20.000đ",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 60.v,
            width: 66.h,
            margin: EdgeInsets.only(left: 9.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 60.v,
                    width: 62.h,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.onPrimaryContainer,
                      borderRadius: BorderRadius.circular(
                        4.h,
                      ),
                      border: Border.all(
                        color: appTheme.gray300,
                        width: 1.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "50.000đ",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 60.v,
            width: 72.h,
            margin: EdgeInsets.only(left: 6.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 60.v,
                    width: 62.h,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.onPrimaryContainer,
                      borderRadius: BorderRadius.circular(
                        4.h,
                      ),
                      border: Border.all(
                        color: appTheme.gray300,
                        width: 1.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "100.000đ",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
