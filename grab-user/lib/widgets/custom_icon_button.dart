import 'package:flutter/material.dart';
import 'package:team_grab/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.black900,
                  borderRadius: BorderRadius.circular(25.h),
                  border: Border.all(
                    color: appTheme.black900,
                    width: 1.h,
                  ),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(
          color: appTheme.blueGray100,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineAmberA => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        borderRadius: BorderRadius.circular(25.h),
        border: Border.all(
          color: appTheme.amberA400,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillAmber => BoxDecoration(
        color: appTheme.amber100,
        borderRadius: BorderRadius.circular(4.h),
      );
  static BoxDecoration get fillAmberA => BoxDecoration(
        color: appTheme.amberA400,
        borderRadius: BorderRadius.circular(14.h),
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        borderRadius: BorderRadius.circular(4.h),
      );
  static BoxDecoration get fillAmberTL25 => BoxDecoration(
        color: appTheme.amber100,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green500,
        borderRadius: BorderRadius.circular(35.h),
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red400,
        borderRadius: BorderRadius.circular(35.h),
      );
  static BoxDecoration get outlineAmberATL10 => BoxDecoration(
        color: appTheme.yellow5001,
        borderRadius: BorderRadius.circular(10.h),
        border: Border.all(
          color: appTheme.amberA400,
          width: 1.h,
        ),
      );
}
