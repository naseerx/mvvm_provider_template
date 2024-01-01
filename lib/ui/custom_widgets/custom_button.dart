import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_provider_template/core/constants/colors.dart';
import 'package:mvvm_provider_template/core/extensions/sized_box.dart';

class CustomGradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String name;
  final TextStyle textStyle;
  final List<Color> gradientColors;
  final BorderRadius borderRadius;
  final bool isIcon;

  const CustomGradientButton({
    super.key,
    required this.onPressed,
    required this.name,
    this.textStyle = const TextStyle(
        color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
    this.gradientColors = const [Colors.blue, Colors.green],
    this.borderRadius = const BorderRadius.all(Radius.circular(10)),
    this.isIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onPressed,
        child: Container(
          width: Get.width * 0.8,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: gradientColors,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: borderRadius,
          ),
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              Text(
                name,
                style: textStyle,
              ),
              isIcon
                  ? const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: kWhite,
                    )
                  : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}

class CustomSignUpButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String name;
  final Widget icon;
  final List<Color> gradientColors;
  final bool isIcon;

  const CustomSignUpButton(
      {super.key,
      required this.onPressed,
      required this.name,
      this.isIcon = false,
      required this.gradientColors,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 293,
        height: 55,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: gradientColors,
            )),
        child: Row(
          children: [
            20.width,
            CircleAvatar(
              radius: 18,
              backgroundColor: kWhite,
              child: icon,
            ),
            20.width,
            Text(name,
                style: const TextStyle(
                  fontSize: 17,
                  color: kWhite,
                  fontWeight: FontWeight.w600,
                ))
          ],
        ),
      ),
    );
  }
}
