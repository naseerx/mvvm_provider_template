// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:mvvm_provider_template/core/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? errorText;
  final String? hintText;
  final Widget? suffixIcon;
  final bool readOnly;
  final Function()? onTap;
  final validator;
  const CustomTextField({
    Key? key,
    required this.controller,
    this.validator,
    this.errorText,
    this.hintText,
    this.onTap,
    this.readOnly = false,
    this.suffixIcon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Center(
        child: TextFormField(
          readOnly: readOnly,
          controller: controller,
          validator: validator ??
              (value) {
                if (value != null) {
                  return errorText;
                } else {
                  return null;
                }
              },
          decoration: InputDecoration(
            fillColor: kWhite,
            filled: true,
            suffixIcon: suffixIcon,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.0),
            ),
            hintText: hintText,
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}

class CustomTextFieldProfile extends StatelessWidget {
  final TextEditingController controller;
  final String? errorText;
  final String? hintText;
  final validator;
  const CustomTextFieldProfile({
    Key? key,
    required this.controller,
    this.validator,
    this.errorText,
    this.hintText,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: TextFormField(
        textCapitalization: TextCapitalization.sentences,
        controller: controller,
        style: const TextStyle(color: kWhite),
        validator: validator ??
            (value) {
              if (value != null) {
                return errorText;
              } else {
                return null;
              }
            },
        decoration: InputDecoration(
          fillColor: Colors.transparent,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kWhite.withOpacity(0.4)),
            borderRadius: BorderRadius.circular(30),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kWhite.withOpacity(0.4)),
            borderRadius: BorderRadius.circular(30),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(color: kLightWhite),
        ),
      ),
    );
  }
}
