import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:team_grab/core/app_export.dart';
import 'package:team_grab/presentation/language_screen/language_screen.dart';
import 'package:team_grab/presentation/location_screen_bottomsheet/location_screen_bottomsheet.dart';
import 'package:team_grab/presentation/location_screen_confirm1_bottomsheet/location_screen_confirm1_bottomsheet.dart';
import 'package:team_grab/presentation/location_screen_confirm_bottomsheet/location_screen_confirm_bottomsheet.dart';
import 'package:team_grab/widgets/custom_icon_button.dart';
import 'package:team_grab/widgets/custom_text_form_field.dart';

class LocationScreenInputScreen extends StatelessWidget {
  LocationScreenInputScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController locationController = TextEditingController();

  TextEditingController inputController = TextEditingController();

  TextEditingController inputController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimaryContainer,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.img20LocationScreenInput,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: SizedBox(
              height: 820.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 14.h,
                        right: 14.h,
                        bottom: 155.v,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgFilter,
                            height: 1.v,
                            width: 28.h,
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 1.h),
                          ),
                          SizedBox(height: 27.v),
                          _buildHumberger(context),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 70.h),
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
                                padding: EdgeInsets.all(22.h),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder36,
                                ),
                                child: Container(
                                  padding: EdgeInsets.all(5.h),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder15,
                                  ),
                                  child: CustomTextFormField(
                                    controller: locationController,
                                    suffix: SizedBox(
                                      child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgLocationGray800,
                                        height: 17.adaptSize,
                                        width: 17.adaptSize,
                                      ),
                                    ),
                                    suffixConstraints: BoxConstraints(
                                      maxHeight: 17.v,
                                    ),
                                    borderDecoration:
                                        TextFormFieldStyleHelper.custom,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 56.v),
                          _buildCreateAnAccount(context),
                          SizedBox(height: 15.v),
                          _buildSeventySix(context),
                        ],
                      ),
                    ),
                  ),
                  _buildMenu(context),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 120.v),
                      decoration: AppDecoration.fillGray90001,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 9.v),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 10.v),
                            decoration:
                                AppDecoration.fillOnPrimaryContainer.copyWith(
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
                                SizedBox(height: 19.v),
                                Text(
                                  "Lựa chọn vị trí",
                                  style: CustomTextStyles.titleLarge20,
                                ),
                                SizedBox(height: 9.v),
                                Divider(),
                                SizedBox(height: 15.v),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                LocationScreenConfirm1Bottomsheet()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8.0), // Điều chỉnh độ cong của button
                                      side: BorderSide(
                                          color: Colors
                                              .blue), // Tuỳ chỉnh màu sắc của viền nếu cần
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 15.h,
                                      right: 16.h,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              10.0, 19.0, 16.0, 17.0),
                                          child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgLocationForm,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize,
                                          ),
                                        ),
                                        Text(
                                          'Vị trí hiện tại',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                        Container(
                                          constraints:
                                              BoxConstraints(maxHeight: 2.v),
                                          margin: EdgeInsets.symmetric(
                                              vertical: 17.v, horizontal: 70.v),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              30.0, 19.0, 12.0, 17.0),
                                          child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgLocationForm,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                // Padding(
                                //   padding: EdgeInsets.only(
                                //     left: 15.h,
                                //     right: 16.h,
                                //   ),
                                //   child: CustomTextFormField(
                                //     controller: inputController,
                                //     hintText: "Vị trí hiện tại",
                                //     hintStyle: theme.textTheme.titleMedium!,
                                //     prefix: Container(
                                //       margin: EdgeInsets.fromLTRB(
                                //           10.h, 19.v, 16.h, 17.v),
                                //       child: CustomImageView(
                                //         imagePath:
                                //             ImageConstant.imgLocationForm,
                                //         height: 24.adaptSize,
                                //         width: 24.adaptSize,
                                //       ),
                                //     ),
                                //     prefixConstraints: BoxConstraints(
                                //       maxHeight: 60.v,
                                //     ),
                                //     suffix: Container(
                                //       margin: EdgeInsets.fromLTRB(
                                //           30.h, 19.v, 12.h, 17.v),
                                //       child: CustomImageView(
                                //         imagePath: ImageConstant
                                //             .imgLocationTarhgetRed500,
                                //         height: 24.adaptSize,
                                //         width: 24.adaptSize,
                                //       ),
                                //     ),
                                //     suffixConstraints: BoxConstraints(
                                //       maxHeight: 60.v,
                                //     ),
                                //     contentPadding:
                                //         EdgeInsets.symmetric(vertical: 17.v),
                                //     borderDecoration:
                                //         TextFormFieldStyleHelper.outlineAmberA,
                                //   ),
                                // ),
                                SizedBox(height: 16.v),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 15.h,
                                    right: 16.h,
                                  ),
                                  child: CustomTextFormField(
                                    controller: inputController1,
                                    hintText: "Nhập vào vị trí",
                                    hintStyle: theme.textTheme.titleMedium!,
                                    textInputAction: TextInputAction.done,
                                    prefix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          10.h, 19.v, 16.h, 17.v),
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgMap,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                      ),
                                    ),
                                    prefixConstraints: BoxConstraints(
                                      maxHeight: 60.v,
                                    ),
                                    contentPadding: EdgeInsets.only(
                                      top: 17.v,
                                      right: 30.h,
                                      bottom: 17.v,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 16.v),
                                Divider(),
                                SizedBox(height: 14.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 15.h),
                                    child: Text(
                                      "Địa điểm gần đây",
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 2.v),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 15.h),
                                  child: _buildMap(
                                    context,
                                    coffeeShop: "Đại học Khoa Học Tự Nhiên",
                                    distance: "2.7km",
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 45.h),
                                    child: Text(
                                      "2972 Westheimer Rd. Santa Ana, Illinois 85486 ",
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 11.v),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 15.h),
                                  child: _buildMap(
                                    context,
                                    coffeeShop: "Coffee shop",
                                    distance: "1.1km",
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 45.h),
                                    child: Text(
                                      "1901 Thornridge Cir. Shiloh, Hawaii 81063",
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10.v),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 15.h),
                                  child: _buildMap(
                                    context,
                                    coffeeShop: "Shopping center",
                                    distance: "4.9km",
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 45.h),
                                    child: Text(
                                      "4140 Parker Rd. Allentown, New Mexico 31134",
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 12.v),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 15.h),
                                  child: _buildMap(
                                    context,
                                    coffeeShop: "Shopping mall",
                                    distance: "4.0km",
                                  ),
                                ),
                                SizedBox(height: 40.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 45.h),
                                    child: Text(
                                      "4140 Parker Rd. Allentown, New Mexico 31134",
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHumberger(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 34.adaptSize,
            width: 34.adaptSize,
            padding: EdgeInsets.all(9.h),
            decoration: IconButtonStyleHelper.fillAmber,
            child: CustomImageView(
              imagePath: ImageConstant.imgMenu,
            ),
          ),
          Spacer(),
          CustomIconButton(
            height: 34.adaptSize,
            width: 34.adaptSize,
            padding: EdgeInsets.all(5.h),
            decoration: IconButtonStyleHelper.fillAmber,
            child: CustomImageView(
              imagePath: ImageConstant.imgSearch,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: CustomIconButton(
              height: 34.adaptSize,
              width: 34.adaptSize,
              padding: EdgeInsets.all(5.h),
              decoration: IconButtonStyleHelper.fillAmber,
              child: CustomImageView(
                imagePath: ImageConstant.imgNotification,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCreateAnAccount(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 60.h,
              vertical: 14.v,
            ),
            decoration: AppDecoration.fillPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Text(
              "Rental",
              style: CustomTextStyles.titleMediumOnPrimaryContainer,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.v),
            child: CustomIconButton(
              height: 34.adaptSize,
              width: 34.adaptSize,
              padding: EdgeInsets.all(5.h),
              decoration: IconButtonStyleHelper.fillOnPrimaryContainer,
              child: CustomImageView(
                imagePath: ImageConstant.imgLocationTarhget,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventySix(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineAmberA400.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 9.h,
              vertical: 12.v,
            ),
            decoration: AppDecoration.outlineYellow.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSearch,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(top: 1.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 1.v,
                  ),
                  child: Text(
                    "Where would you go?",
                    style: CustomTextStyles.titleMediumGray500,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgHeart,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(top: 1.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
          Container(
            decoration: AppDecoration.outlineYellow.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 44.h,
                    vertical: 9.v,
                  ),
                  decoration: AppDecoration.fillPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 3.v),
                      Text(
                        "Transport",
                        style: CustomTextStyles.titleMediumOnPrimaryContainer,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 51.h,
                    top: 12.v,
                    bottom: 10.v,
                  ),
                  child: Text(
                    "Delivery",
                    style: CustomTextStyles.titleMediumGray800_1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMenu(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 17.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: fs.Svg(
              ImageConstant.imgGroup287,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 10.v),
            CustomImageView(
              imagePath: ImageConstant.imgSearchOnprimarycontainer,
              height: 40.adaptSize,
              width: 40.adaptSize,
            ),
            SizedBox(height: 13.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 5.v),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 13.v,
                        width: 16.h,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgInfo,
                              height: 13.v,
                              width: 12.h,
                              alignment: Alignment.center,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgNavHome,
                              height: 6.v,
                              width: 16.h,
                              alignment: Alignment.topCenter,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        "Home",
                        style: CustomTextStyles.labelLargeAmberA400_1,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.h),
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgHeart,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      Text(
                        "Favourite",
                        style: CustomTextStyles.labelLargeGray800,
                      ),
                    ],
                  ),
                ),
                Spacer(
                  flex: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 23.v),
                  child: Text(
                    "Wallet",
                    style: CustomTextStyles.labelLargeGray800,
                  ),
                ),
                Spacer(
                  flex: 42,
                ),
                Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSettings,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                    Text(
                      "Offer",
                      style: CustomTextStyles.labelLargeGray800,
                    ),
                  ],
                ),
                Spacer(
                  flex: 27,
                ),
                Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgUser,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                    Text(
                      "Profile",
                      style: CustomTextStyles.labelLargeGray800,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildMap(
    BuildContext context, {
    required String coffeeShop,
    required String distance,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgMapGray700,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 6.h,
            top: 2.v,
          ),
          child: Text(
            coffeeShop,
            style: theme.textTheme.titleMedium!.copyWith(
              color: appTheme.gray700,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(bottom: 6.v),
          child: Text(
            distance,
            style: CustomTextStyles.titleSmallGray700.copyWith(
              color: appTheme.gray700,
            ),
          ),
        ),
      ],
    );
  }
}
