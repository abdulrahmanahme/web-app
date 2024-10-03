import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web_app/core/app_colors.dart';
import 'package:web_app/view/widgets/tablet/tablet_screen.dart';
import 'package:web_app/view/widgets/web/widget/hider_web_widget.dart';
import 'package:web_app/view/widgets/web/web_screen_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: LayoutBuilder(
        builder: (context, constraints) {
          log('ssssss ${constraints.maxWidth}');

          // Check if the platform is web or mobile/tablet
          if (kIsWeb) {
            // Web layout (Desktop)
            if (constraints.maxWidth > 1024) {
              return const  WebScreenWidget();
            } else if (constraints.maxWidth > 600) {
            return const TabletScreen();

              // return _buildTabletLayout();
            } else {
            return  Container();
              // return _buildMobileLayout();
            }
          } else {
            // Mobile or Tablet (non-web)
            if (constraints.maxWidth > 600) {
              return Container();
              // return _buildTabletLayout();
            } else {
              // buildMobileLayout();
              return Container();
            }
          }
        },
      ),
    );
  }
}

