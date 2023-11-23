import 'package:flutter/material.dart';
import 'package:team_grab/core/app_export.dart';
import 'package:team_grab/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:team_grab/widgets/app_bar/appbar_title.dart';
import 'package:team_grab/widgets/app_bar/custom_app_bar.dart';
import 'package:team_grab/widgets/custom_drop_down.dart';
import 'package:team_grab/widgets/custom_elevated_button.dart';
import 'package:team_grab/widgets/custom_icon_button.dart';
import 'package:team_grab/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController mobileNumberController = TextEditingController();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  TextEditingController addressController = TextEditingController();

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
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: Column(
              children: [
                SizedBox(height: 19.v),
                SizedBox(
                  height: 138.adaptSize,
                  width: 138.adaptSize,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage,
                        height: 138.adaptSize,
                        width: 138.adaptSize,
                        radius: BorderRadius.circular(
                          69.h,
                        ),
                        alignment: Alignment.center,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 11.h,
                          bottom: 9.v,
                        ),
                        child: CustomIconButton(
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          padding: EdgeInsets.all(4.h),
                          decoration: IconButtonStyleHelper.outlineAmberATL10,
                          alignment: Alignment.bottomRight,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgEditImage,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.v),
                Text(
                  "Nate Samson",
                  style: CustomTextStyles.headlineMediumGray700,
                ),
                SizedBox(height: 19.v),
                _buildEmail(context),
                SizedBox(height: 16.v),
                _buildMobileNumberRow(context),
                SizedBox(height: 16.v),
                CustomDropDown(
                  icon: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 27.v, 16.h, 25.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowDown,
                      height: 7.v,
                      width: 14.h,
                    ),
                  ),
                  hintText: "Male",
                  hintStyle: theme.textTheme.titleMedium!,
                  items: dropdownItemList,
                  onChanged: (value) {},
                ),
                SizedBox(height: 16.v),
                _buildAddress(context),
                SizedBox(height: 32.v),
                _buildUpdateButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 49.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgMenu,
        margin: EdgeInsets.only(
          left: 15.h,
          top: 11.v,
          bottom: 10.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Edit Profile",
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      hintText: "nate@email.con",
      textInputType: TextInputType.emailAddress,
    );
  }

  /// Section Widget
  Widget _buildMobileNumber(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 4.h,
        top: 11.v,
        bottom: 7.v,
      ),
      child: CustomTextFormField(
        width: 216.h,
        controller: mobileNumberController,
        hintText: "Your mobile number",
        textInputType: TextInputType.phone,
      ),
    );
  }

  /// Section Widget
  Widget _buildMobileNumberRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 44.v,
            width: 124.h,
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 6.v),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup13,
                          height: 18.v,
                          width: 25.h,
                          margin: EdgeInsets.only(bottom: 6.v),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowDown,
                          height: 7.v,
                          width: 14.h,
                          margin: EdgeInsets.only(
                            left: 14.h,
                            top: 3.v,
                            bottom: 13.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 26.h),
                          child: Text(
                            "+880",
                            style: CustomTextStyles.titleMediumGray90001,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 57.h),
                    child: SizedBox(
                      height: 44.v,
                      child: VerticalDivider(
                        width: 1.h,
                        thickness: 1.v,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          _buildMobileNumber(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return CustomTextFormField(
      controller: addressController,
      hintText: "Address",
      textInputAction: TextInputAction.done,
    );
  }

  /// Section Widget
  Widget _buildUpdateButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Update",
    );
  }
}
