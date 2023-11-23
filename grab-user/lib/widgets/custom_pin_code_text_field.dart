import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:team_grab/core/app_export.dart';

class CustomPinCodeTextField extends StatelessWidget {
  CustomPinCodeTextField({
    Key? key,
    required this.context,
    required this.onChanged,
    this.alignment,
    this.controller,
    this.textStyle,
    this.hintStyle,
    this.validator,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final BuildContext context;

  final TextEditingController? controller;

  final TextStyle? textStyle;

  final TextStyle? hintStyle;

  Function(String) onChanged;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: pinCodeTextFieldWidget,
          )
        : pinCodeTextFieldWidget;
  }

  Widget get pinCodeTextFieldWidget => PinCodeTextField(
        appContext: context,
        controller: controller,
        length: 4,
        keyboardType: TextInputType.number,
        textStyle: textStyle ?? CustomTextStyles.headlineSmallGray800,
        hintStyle: hintStyle ?? CustomTextStyles.headlineSmallGray800,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        enableActiveFill: true,
        pinTheme: PinTheme(
          fieldHeight: 48.h,
          fieldWidth: 50.h,
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(7.h),
          inactiveColor: appTheme.blueGray100,
          activeColor: appTheme.blueGray100,
          inactiveFillColor: theme.colorScheme.onPrimaryContainer,
          activeFillColor: theme.colorScheme.onPrimaryContainer,
          selectedColor: appTheme.amber300,
          selectedFillColor: appTheme.yellow50,
        ),
        onChanged: (value) => onChanged(value),
        validator: validator,
      );
}
