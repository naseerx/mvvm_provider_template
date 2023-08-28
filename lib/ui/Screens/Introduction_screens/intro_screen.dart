import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_provider_template/UI/custom_widgets/intro_screen_widget.dart';
import 'package:mvvm_provider_template/core/constants/assets.dart';
import 'package:mvvm_provider_template/core/constants/colors.dart';
import 'package:mvvm_provider_template/core/constants/strings.dart';
import 'package:mvvm_provider_template/core/extensions/sized_box.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Widget> _pages = [
    const IntroPage(
      title: welcomeMsg,
      description: 'welcomeDescription',
    ),
    const IntroPage(
      title: welcomeMsg,
      description: 'welcomeDescription',
    ),
    const IntroPage(
      title: welcomeMsg,
      description: 'welcomeDescription',
    ),
    const IntroPage(
      title: welcomeMsg,
      description: 'welcomeDescription',
    ),
    const IntroPage(
      title: welcomeMsg,
      description: 'welcomeDescription',
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkWhite,
      body: Column(
        children: [
          Container(
            height: Get.height * 0.47,
            width: Get.width,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [kWhite, kDarkWhite])),
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: SizedBox(
                height: 100,
                width: 100,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Image.asset(logo),
                ),
              ),
            ),
          ),
          Container(
            height: Get.height * 0.53,
            width: Get.width,
            decoration: const BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20))),
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: _pages.length,
                    itemBuilder: (context, index) {
                      return _pages[index];
                    },
                    onPageChanged: (int index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                  ),
                ),
                10.ph,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < _pages.length; i++)
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        width: i == _currentPage ? 18.0 : 6,
                        height: 6.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: i == _currentPage ? kPrimaryColor : kWhite,
                        ),
                      ),
                  ],
                ),
                30.ph,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
