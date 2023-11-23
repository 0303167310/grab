import 'package:flutter/material.dart';
import 'package:team_grab/core/app_export.dart';
import 'package:team_grab/widgets/custom_elevated_button.dart';
import 'package:team_grab/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AddAddressBottomsheet extends StatelessWidget {
  AddAddressBottomsheet({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 64.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 60.v),
          CustomTextFormField(
            controller: nameController,
            hintText: "Name of Address",
            hintStyle: theme.textTheme.titleMedium!,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(10.h, 19.v, 16.h, 17.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgPlusIndigo100,
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
          SizedBox(height: 16.v),
          CustomTextFormField(
            controller: addressController,
            hintText: "Address Details",
            hintStyle: theme.textTheme.titleMedium!,
            textInputAction: TextInputAction.done,
            maxLines: 4,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 17.v,
            ),
          ),
          SizedBox(height: 20.v),
          CustomElevatedButton(
            text: "Add Address",
          ),
        ],
      ),
    );
  }
}
