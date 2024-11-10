import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby/personal/personal.dart';
import 'package:nearby/screen/chart/chart.dart';
import 'package:nearby/screen/home/favorites.dart';
import 'package:nearby/screen/home/index.dart';
import 'package:nearby/screen/home/write.dart';

const double bottomBavigationIconSize = 32;

class HomeFrameScreen extends StatefulWidget {
  HomeFrameScreen({super.key});

  @override
  State<HomeFrameScreen> createState() => _HomeFrameScreenState();
}

class _HomeFrameScreenState extends State<HomeFrameScreen> {
  int _stackIndex = 0;
  int _notificationCount = 5;

  @override
  Widget build(BuildContext context) {
    log('HomeFrameScreen build stackIndex: $_stackIndex');
    return Scaffold(
      body: IndexedStack(
        sizing: StackFit.expand,
        index: _stackIndex,
        children: [
          HomeIndexScreen(),
          SizedBox.shrink(),
          HomeFavoritesScreen(),
          HomeChartScreen(),
          PersonalScreen(),
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
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: HomeWriteScreen(),
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
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      constraints: BoxConstraints(
                        minWidth: 12,
                        minHeight: 12,
                      ),
                      child: Text(
                        '$_notificationCount',
                        style: TextStyle(
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
