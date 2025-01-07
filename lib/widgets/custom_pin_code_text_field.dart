import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../core/app_export.dart';

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
        textStyle: textStyle,
        hintStyle: hintStyle,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        enableActiveFill: true,
        pinTheme: PinTheme(
          fieldHeight: 50,
          fieldWidth: 50,
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(12),
          inactiveFillColor: theme.colorScheme.onError,
          activeFillColor: theme.colorScheme.onError,
          inactiveColor: Colors.black12,
          activeColor: Colors.black12,
          selectedColor: Colors.black,
          selectedFillColor: Colors.white,
        ),
        onChanged: (value) => onChanged(value),
        validator: validator,
      );
}
