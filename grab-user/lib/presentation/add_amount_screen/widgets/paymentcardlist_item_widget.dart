import 'package:flutter/material.dart';
import 'package:team_grab/core/app_export.dart';

// ignore: must_be_immutable
class PaymentcardlistItemWidget extends StatelessWidget {
  const PaymentcardlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.outlineAmberA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFlag,
            height: 35.v,
            width: 45.h,
            margin: EdgeInsets.only(
              top: 5.v,
              bottom: 6.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              top: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "**** **** **** 8970",
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  "Expires: 12/26",
                  style: CustomTextStyles.titleSmallGray400,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
