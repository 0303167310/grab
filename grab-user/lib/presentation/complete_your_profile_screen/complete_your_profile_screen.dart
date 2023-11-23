import 'package:flutter/material.dart';
import 'package:team_grab/core/app_export.dart';
import 'package:team_grab/presentation/add_address_bottomsheet/add_address_bottomsheet.dart';
import 'package:team_grab/presentation/enable_location_dialog/enable_location_dialog.dart';
import 'package:team_grab/widgets/app_bar/appbar_leading_image.dart';
import 'package:team_grab/widgets/app_bar/appbar_subtitle.dart';
import 'package:team_grab/widgets/app_bar/appbar_title.dart';
import 'package:team_grab/widgets/app_bar/custom_app_bar.dart';
import 'package:team_grab/widgets/custom_drop_down.dart';
import 'package:team_grab/widgets/custom_elevated_button.dart';
import 'package:team_grab/widgets/custom_outlined_button.dart';
import 'package:team_grab/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CompleteYourProfileScreen extends StatelessWidget {
  CompleteYourProfileScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();

  TextEditingController mobileNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController inputController = TextEditingController();

  List<String> dropdownItemList = [
    "Thành phố Hồ Chí Minh",
    "Thành Phố Hà Nội",
    "Thành Phố Hải Phòng"
  ];

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 13.v),
                    child: Column(children: [
                      SizedBox(height: 23.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 15.h, right: 15.h, bottom: 5.v),
                                  child: Column(children: [
                                    Container(
                                        width: 121.h,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 120.h),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 3.h),
                                        decoration: AppDecoration.fillBlueGray
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder60),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              SizedBox(height: 90.v),
                                              Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  color:
                                                      theme.colorScheme.primary,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder15),
                                                  child: Container(
                                                      height: 31.adaptSize,
                                                      width: 31.adaptSize,
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 8.h,
                                                              vertical: 10.v),
                                                      decoration: AppDecoration
                                                          .fillPrimary
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder15),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgUnion,
                                                                height: 10.v,
                                                                width: 14.h,
                                                                alignment: Alignment
                                                                    .centerRight),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgCameraLens,
                                                                height: 6.v,
                                                                width: 7.h,
                                                                alignment: Alignment
                                                                    .bottomRight,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        right:
                                                                            3.h,
                                                                        bottom:
                                                                            1.v))
                                                          ])))
                                            ])),
                                    SizedBox(height: 30.v),
                                    _buildFullName(context),
                                    SizedBox(height: 20.v),
                                    _buildMobileNumber1(context),
                                    SizedBox(height: 20.v),
                                    _buildEmail(context),
                                    SizedBox(height: 20.v),
                                    _buildInput(context),
                                    SizedBox(height: 20.v),
                                    CustomDropDown(
                                        icon: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                30.h, 27.v, 16.h, 25.v),
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgArrowDown,
                                                height: 7.v,
                                                width: 14.h)),
                                        hintText: "Thành phố",
                                        items: dropdownItemList,
                                        onChanged: (value) {}),
                                    SizedBox(height: 20.v),
                                  ]))))
                    ]))),
            bottomNavigationBar: _buildCancel1(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 32.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 8.h, top: 16.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Row(children: [
              AppbarSubtitle(
                  text: "Trở lại", margin: EdgeInsets.only(top: 1.v)),
              AppbarTitle(
                  text: "Thông tin", margin: EdgeInsets.only(left: 92.h))
            ])));
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return CustomTextFormField(
        controller: fullNameController, hintText: "Họ và tên");
  }

  /// Section Widget
  Widget _buildMobileNumber(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h, top: 11.v, bottom: 7.v),
        child: CustomTextFormField(
            width: 216.h,
            controller: mobileNumberController,
            hintText: "Số điện thoại",
            textInputType: TextInputType.phone));
  }

  /// Section Widget
  Widget _buildMobileNumber1(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 8.v),
        decoration: AppDecoration.outlineGray,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          SizedBox(
              height: 44.v,
              width: 124.h,
              child: Stack(alignment: Alignment.centerRight, children: [
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 6.v),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 20.v,
                                  width: 30.h,
                                  margin: EdgeInsets.only(bottom: 6.v),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8.h, vertical: 1.v),
                                  decoration: AppDecoration.fillRedA,
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgStar2,
                                      height: 13.adaptSize,
                                      width: 13.adaptSize,
                                      alignment: Alignment.topRight)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgArrowDown,
                                  height: 7.v,
                                  width: 14.h,
                                  margin: EdgeInsets.only(
                                      left: 14.h, top: 3.v, bottom: 13.v)),
                              Padding(
                                  padding: EdgeInsets.only(left: 26.h),
                                  child: Text("+84",
                                      style: CustomTextStyles
                                          .titleMediumGray90001))
                            ]))),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                        padding: EdgeInsets.only(right: 57.h),
                        child: SizedBox(
                            height: 44.v,
                            child:
                                VerticalDivider(width: 1.h, thickness: 1.v))))
              ])),
          _buildMobileNumber(context)
        ]));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "Email",
        textInputType: TextInputType.emailAddress);
  }

  /// Section Widget
  Widget _buildInput(BuildContext context) {
    return CustomTextFormField(
        controller: inputController,
        hintText: "Địa chỉ",
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildCancel(BuildContext context) {
    return CustomOutlinedButton(
        width: 174.h,
        text: "Hủy",
        buttonTextStyle: CustomTextStyles.titleMediumGray800_1);
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(
        width: 174.h, text: "Lưu", margin: EdgeInsets.only(left: 15.h));
  }

  /// Section Widget
  Widget _buildCancel1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 15.h, right: 15.h, bottom: 50.v),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildCancel(context), _buildSave(context)]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
