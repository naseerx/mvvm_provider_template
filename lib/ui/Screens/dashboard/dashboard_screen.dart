import 'package:flutter/material.dart';
import 'package:mvvm_provider_template/core/constants/colors.dart';
import 'package:provider/provider.dart';

import 'dashboard_vm.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => DashBoardScreenVM(),
      child: Consumer<DashBoardScreenVM>(
        builder: (context, vm, child) => WillPopScope(
          onWillPop: () async {
            return false;
          },
          child: Scaffold(
            body: IndexedStack(
              index: vm.selectedIndex,
              children: vm.screens,
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: vm.selectedIndex,
              selectedItemColor: kWhite,
              unselectedItemColor: kWhite,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              type: BottomNavigationBarType.fixed,
              backgroundColor: kBlack.withOpacity(1),
              selectedIconTheme: const IconThemeData(color: kWhite),
              unselectedIconTheme: const IconThemeData(color: Colors.white54),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    size: 30,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                    size: 30,
                  ),
                  label: 'Setting',
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person,
                      size: 30,
                    ),
                    label: 'Profile'),
              ],
              onTap: (index) {
                vm.onItemTapped(index, context);
              },
            ),
            //we store the pages data with indexedStack
          ),
        ),
      ),
    );
  }
}
