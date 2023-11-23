import 'package:flutter/material.dart';
import 'package:team_grab/core/app_export.dart';
import 'package:team_grab/presentation/location_screen_bottomsheet/location_screen_bottomsheet.dart';
import 'package:team_grab/presentation/welcome_screen/welcome_screen.dart';

class XetItemWidget extends StatelessWidget {
  final String imagePath;
  final String title;

  const XetItemWidget({
    Key? key,
    required this.imagePath,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  LocationScreenBottomsheet()), // Thay APage bằng tên trang cần chuyển hướng tới
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 42.h,
          vertical: 25.v,
        ),
        decoration: AppDecoration.outlineAmberA400.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: imagePath,
              height: 74.adaptSize,
              width: 74.adaptSize,
            ),
            SizedBox(height: 8.v),
            Text(
              title,
              style: theme.textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
