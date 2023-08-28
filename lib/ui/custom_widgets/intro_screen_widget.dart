import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_provider_template/core/constants/colors.dart';
import 'package:mvvm_provider_template/core/extensions/sized_box.dart';
import 'package:mvvm_provider_template/ui/Screens/authentications/signup_selection/signup_selection_screen.dart';

import 'custom_button.dart';

class IntroPage extends StatelessWidget {
  final String title;
  final String description;

  const IntroPage({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              title,
              textAlign: TextAlign.center,
            ),
          ),
          5.ph,
          Text(
            description,
            textAlign: TextAlign.center,
          ),
          15.ph,
          CustomGradientButton(
            onPressed: () {
              Get.to(() => const SignupSelectionScreen());
            },
            name: 'Continue',
            gradientColors: const [kPrimaryColor, kDarkGreen],
          )
        ],
      ),
    );
  }
}
