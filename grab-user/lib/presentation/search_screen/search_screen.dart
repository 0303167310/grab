import 'package:flutter/material.dart';
import 'package:team_grab/core/app_export.dart';
import 'package:team_grab/widgets/custom_text_form_field.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key})
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
              horizontal: 15.h,
              vertical: 30.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomTextFormField(
                  controller: inputController,
                  hintText: "Abcdefghtikl",
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
                SizedBox(height: 14.v),
                _buildSearchResults(context),
                SizedBox(height: 36.v),
                CustomImageView(
                  imagePath: ImageConstant.imgNoDataRafiki1,
                  height: 260.v,
                  width: 350.h,
                ),
                SizedBox(height: 31.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 119.h),
                    child: Text(
                      "Not Found ",
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ),
                SizedBox(height: 5.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 252.h,
                    margin: EdgeInsets.only(left: 49.h),
                    child: Text(
                      "Sorry, the keyword you entered cannot be found, please check again or search with another keyword",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.labelLargeBluegray400.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchResults(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Text(
            "Results for ",
            style: CustomTextStyles.titleMediumSemiBold,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 3.h,
            top: 2.v,
          ),
          child: Text(
            " “Abcdefghtikl”",
            style: CustomTextStyles.titleMediumAmber500,
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Text(
            "0 found",
            style: CustomTextStyles.titleMediumAmber500,
          ),
        ),
      ],
    );
  }
}
