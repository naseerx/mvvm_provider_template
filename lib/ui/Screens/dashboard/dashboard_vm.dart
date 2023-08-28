import 'package:flutter/cupertino.dart';
import 'package:mvvm_provider_template/ui/Screens/dashboard/profile/view.dart';
import 'package:mvvm_provider_template/ui/Screens/dashboard/setting_screen/view.dart';
import 'home_screen/view.dart';


class DashBoardScreenVM extends ChangeNotifier {
  BuildContext? context;

  int selectedIndex = 0;
  final List<Widget> screens = [
    const HomeScreenPage(),
     SettingScreenPage(),
    const ProfilePage(),
  ];

  void onItemTapped(int index, BuildContext context) {
    selectedIndex = index;

    notifyListeners();
  }

  Widget currentScreen = const HomeScreenPage();
}
