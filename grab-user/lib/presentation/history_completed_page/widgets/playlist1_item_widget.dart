import 'package:flutter/material.dart';
import 'package:team_grab/core/app_export.dart';

// ignore: must_be_immutable
class Playlist1ItemWidget extends StatelessWidget {
  const Playlist1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineAmberA4003.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nate",
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 5.v),
              Text(
                "Mustang Shelby GT",
                style: theme.textTheme.labelLarge,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 11.v,
              right: 3.h,
              bottom: 15.v,
            ),
            child: Text(
              "Done",
              style: CustomTextStyles.labelLargeGreen60001,
            ),
          ),
        ],
      ),
    );
  }
}
