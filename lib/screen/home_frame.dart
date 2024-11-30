import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby/screen/personal/personal.dart';
import 'package:nearby/screen/chart/chart.dart';
import 'package:nearby/screen/home/favorites.dart';
import 'package:nearby/screen/home/index.dart';
import 'package:nearby/screen/home/write.dart';

const double bottomBavigationIconSize = 32;

class HomeLayoutScreen extends StatefulWidget {
  const HomeLayoutScreen({super.key});

  @override
  State<HomeLayoutScreen> createState() => _HomeLayoutScreenState();
}

class _HomeLayoutScreenState extends State<HomeLayoutScreen> {
  int _stackIndex = 0;
  int _notificationCount = 5;

  @override
  Widget build(BuildContext context) {
    log('HomeLayoutScreen build stackIndex: $_stackIndex');
    return Scaffold(
      body: IndexedStack(
        sizing: StackFit.expand,
        index: _stackIndex,
        children: [
          HomeIndexScreen(),
          const SizedBox.shrink(),
          const HomeFavoritesScreen(),
          const HomeChartScreen(),
          const PersonalScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _stackIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          log('Add button tapped $index');
          if (index == 1) {
            Get.bottomSheet(
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: const HomeWriteScreen(),
              ),
            );
          } else {
            setState(() {
              _stackIndex = index;
            });
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                const Icon(Icons.newspaper, size: bottomBavigationIconSize),
                if (_notificationCount > 0)
                  Positioned(
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      constraints: const BoxConstraints(
                        minWidth: 12,
                        minHeight: 12,
                      ),
                      child: Text(
                        '$_notificationCount',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
              ],
            ),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search, size: bottomBavigationIconSize),
            label: 'Search',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border, size: bottomBavigationIconSize),
            label: 'Add',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined, size: bottomBavigationIconSize),
            label: 'Favorite',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined, size: bottomBavigationIconSize),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
