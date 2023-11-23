import '../address_screen/widgets/addresslist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:team_grab/core/app_export.dart';
import 'package:team_grab/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:team_grab/widgets/app_bar/appbar_title.dart';
import 'package:team_grab/widgets/app_bar/custom_app_bar.dart';
import 'package:team_grab/widgets/custom_elevated_button.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 17.v),
          child: Column(
            children: [
              SizedBox(height: 19.v),
              _buildAddressList(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildAddNewAddress(context),
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
        text: "Address",
      ),
    );
  }

  /// Section Widget
  Widget _buildAddressList(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 15.v,
            );
          },
          itemCount: 7,
          itemBuilder: (context, index) {
            return AddresslistItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddNewAddress(BuildContext context) {
    return CustomElevatedButton(
      text: "Add New Address",
      margin: EdgeInsets.only(
        left: 16.h,
        right: 15.h,
        bottom: 55.v,
      ),
    );
  }
}
