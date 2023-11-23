import '../location_screen_bottomsheet/widgets/office_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:team_grab/core/app_export.dart';
import 'package:team_grab/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LocationScreenBottomsheet extends StatelessWidget {
  LocationScreenBottomsheet({Key? key})
      : super(
          key: key,
        );

  TextEditingController inputController = TextEditingController();

  TextEditingController inputController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 10.v),
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
          SizedBox(height: 18.v),
          Text(
            "Select address",
            style: CustomTextStyles.titleLarge20,
          ),
          SizedBox(height: 10.v),
          Divider(),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              right: 16.h,
            ),
            child: CustomTextFormField(
              controller: inputController,
              hintText: "Form",
              hintStyle: theme.textTheme.titleMedium!,
              prefix: Container(
                margin: EdgeInsets.fromLTRB(10.h, 19.v, 16.h, 17.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgLocationForm,
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
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              right: 16.h,
            ),
            child: CustomTextFormField(
              controller: inputController1,
              hintText: "To",
              hintStyle: theme.textTheme.titleMedium!,
              textInputAction: TextInputAction.done,
              prefix: Container(
                margin: EdgeInsets.fromLTRB(10.h, 19.v, 16.h, 17.v),
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
          SizedBox(height: 15.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: Text(
                "Recent places",
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          SizedBox(height: 1.v),
          _buildOffice(context),
          SizedBox(height: 40.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOffice(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 11.v,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return OfficeItemWidget();
        },
      ),
    );
  }
}
