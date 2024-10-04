import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_app/core/app_colors.dart';
import 'package:web_app/view/widgets/mobile/screen_mobile.dart';
import 'package:web_app/view/widgets/tablet/tablet_screen.dart';
import 'package:web_app/view/widgets/web/widget/card_item_web_widget.dart';
import 'package:web_app/view/widgets/web/widget/hider_web_widget.dart';
import 'package:web_app/view/widgets/web/web_screen_widget.dart';
import 'package:web_app/view/widgets/web/widget/item_filter_web_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: LayoutBuilder(
        builder: (context, constraints) {
          log('ssssss ${constraints.maxWidth}');

          if (kIsWeb) {
            // Web layout (Desktop)
            if (constraints.maxWidth > 900) {
              return  WebScreenWidget(mainAxisExtent: 370.h,);
            } else if (constraints.maxWidth > 600) {
              return const TabletScreen();
            } else {
              return ScreenMobile();
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
