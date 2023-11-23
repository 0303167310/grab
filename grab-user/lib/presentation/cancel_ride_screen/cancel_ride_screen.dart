import '../cancel_ride_screen/widgets/cancelride_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:team_grab/core/app_export.dart';
import 'package:team_grab/widgets/app_bar/appbar_leading_image.dart';
import 'package:team_grab/widgets/app_bar/appbar_subtitle.dart';
import 'package:team_grab/widgets/app_bar/appbar_title.dart';
import 'package:team_grab/widgets/app_bar/custom_app_bar.dart';
import 'package:team_grab/widgets/custom_elevated_button.dart';

class CancelRideScreen extends StatelessWidget {
  const CancelRideScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 8.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 77.h),
                          child: Text("Vui lòng chọn lý do để hủy",
                              style: CustomTextStyles.titleSmallGray400))),
                  SizedBox(height: 15.v),
                  _buildCancelRide(context),
                  SizedBox(height: 25.v),
                  CustomElevatedButton(
                      text: "Gửi", margin: EdgeInsets.only(left: 11.h)),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 32.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftGray900,
            margin: EdgeInsets.only(left: 8.h, top: 14.v, bottom: 17.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Row(children: [
              AppbarSubtitle(
                  text: "Back", margin: EdgeInsets.only(bottom: 2.v)),
              AppbarTitle(
                  text: "Hủy chuyến", margin: EdgeInsets.only(left: 67.h))
            ])));
  }

  Widget _buildCancelRide(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 6.h, right: 5.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 5.v);
            },
            itemCount: 1,
            itemBuilder: (context, index) {
              return CancelrideItemWidget();
            }));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
