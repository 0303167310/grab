import 'package:flutter/material.dart';
import 'package:team_grab/core/app_export.dart';
import 'package:team_grab/widgets/custom_elevated_button.dart';
import 'package:team_grab/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class LocationScreenConfirm1Bottomsheet extends StatelessWidget {
  const LocationScreenConfirm1Bottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 9.v),
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
            SizedBox(height: 25.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 32.h),
                child: Text(
                  "Tài xế sẽ đến trong  3:35",
                  style: theme.textTheme.titleMedium,
                ),
              ),
            ),
            SizedBox(height: 12.v),
            Divider(),
            SizedBox(height: 14.v),
            _buildNguyNVNAn(context),
            SizedBox(height: 16.v),
            Divider(),
            SizedBox(height: 9.v),
            _buildPhNgThCThanh(context),
            SizedBox(height: 16.v),
            _buildPaymentCard(context),
            SizedBox(height: 27.v),
            _buildFrame(context),
            SizedBox(height: 38.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNguyNVNAn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle553,
            height: 59.v,
            width: 54.h,
            radius: BorderRadius.circular(
              4.h,
            ),
            margin: EdgeInsets.only(top: 3.v),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "Nguyễn Văn An",
                    style: CustomTextStyles.titleMediumGray900_1,
                  ),
                ),
                SizedBox(
                  height: 16.v,
                  width: 69.h,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "800m (5p)",
                          style: CustomTextStyles.bodySmallGray500,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgMapGray800,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        alignment: Alignment.centerLeft,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.v),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgVectorYellow700,
                        height: 8.adaptSize,
                        width: 8.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 3.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Text(
                          "4.9 (531 Đánh giá)",
                          style: CustomTextStyles.bodySmallGray500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgImage3,
            height: 54.v,
            width: 93.h,
            margin: EdgeInsets.only(top: 6.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPhNgThCThanh(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 13.v,
              bottom: 3.v,
            ),
            child: Text(
              "Phương thức thanh toán",
              style: theme.textTheme.titleMedium,
            ),
          ),
          Text(
            "VNĐ220k",
            style: theme.textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentCard(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.outlineAmberA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFlag,
            height: 35.v,
            width: 45.h,
            margin: EdgeInsets.only(
              top: 5.v,
              bottom: 6.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              top: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "**** **** **** 8970",
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  "Ngày hết hạn: 12/26",
                  style: CustomTextStyles.titleSmallGray400,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.v),
            child: CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(7.h),
              decoration: IconButtonStyleHelper.outlineAmberA,
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup39334,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              top: 2.v,
              bottom: 2.v,
            ),
            child: CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(7.h),
              decoration: IconButtonStyleHelper.outlineAmberA,
              child: CustomImageView(
                imagePath: ImageConstant.imgMessageSvgrepoCom,
              ),
            ),
          ),
          Spacer(),
          CustomElevatedButton(
            width: 189.h,
            text: "Hủy chuyến đi",
          ),
        ],
      ),
    );
  }
}
