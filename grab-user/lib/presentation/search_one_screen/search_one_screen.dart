import '../search_one_screen/widgets/searchonesection_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:team_grab/core/app_export.dart';
import 'package:team_grab/widgets/custom_text_form_field.dart';

class SearchOneScreen extends StatelessWidget {
  SearchOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController inputController = TextEditingController();

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
                ImageConstant.imgSearchOne,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 9.h,
              vertical: 30.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 7.h,
                    right: 6.h,
                  ),
                  child: CustomTextFormField(
                    controller: inputController,
                    hintText: "Cửa hàng tiện lợi",
                    textInputAction: TextInputAction.done,
                    prefix: Container(
                      margin: EdgeInsets.only(
                        left: 10.h,
                        top: 18.v,
                        bottom: 18.v,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgSearchGray800,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: 60.v,
                    ),
                    suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 20.v, 9.h, 21.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgClose,
                        height: 19.adaptSize,
                        width: 19.adaptSize,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: 60.v,
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 17.v),
                    borderDecoration: TextFormFieldStyleHelper.outlineGrayTL8,
                  ),
                ),
                SizedBox(height: 16.v),
                _buildFrameSection(context),
                SizedBox(height: 19.v),
                _buildSearchOneSection(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameSection(BuildContext context) {
    return SizedBox(
      height: 35.v,
      width: 362.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 33.v,
              width: 362.h,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: appTheme.blueGray10033,
                    width: 1.h,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Text(
                "Địa điểm gần đây",
                style: CustomTextStyles.titleMediumSemiBold,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Text(
              "Xóa tất cả",
              style: CustomTextStyles.titleMediumAmber500,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchOneSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 13.v,
          );
        },
        itemCount: 5,
        itemBuilder: (context, index) {
          return SearchonesectionItemWidget();
        },
      ),
    );
  }
}
