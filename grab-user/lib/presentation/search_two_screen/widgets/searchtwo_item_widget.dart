import 'package:flutter/material.dart';
import 'package:team_grab/core/app_export.dart';

// ignore: must_be_immutable
class SearchtwoItemWidget extends StatelessWidget {
  const SearchtwoItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
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
            " “Shop”",
            style: CustomTextStyles.titleMediumAmber500,
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Text(
            "7 found",
            style: CustomTextStyles.titleMediumAmber500,
          ),
        ),
      ],
    );
  }
}
