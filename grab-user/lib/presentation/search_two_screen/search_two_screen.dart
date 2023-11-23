import '../search_two_screen/widgets/searchtwo_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:team_grab/core/app_export.dart';
import 'package:team_grab/widgets/custom_text_form_field.dart';

class SearchTwoScreen extends StatelessWidget {
  SearchTwoScreen({Key? key})
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
                    left: 6.h,
                    right: 5.h,
                  ),
                  child: CustomTextFormField(
                    controller: inputController,
                    hintText: "Shop",
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
                SizedBox(height: 17.v),
                _buildSearchTwo(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchTwo(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 13.v,
          );
        },
        itemCount: 8,
        itemBuilder: (context, index) {
          return SearchtwoItemWidget();
        },
      ),
    );
  }
}
