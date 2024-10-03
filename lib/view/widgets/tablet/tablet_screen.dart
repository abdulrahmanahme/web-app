import 'package:flutter/material.dart';
import 'package:web_app/view/widgets/tablet/widgets/hidder_tablet_widget.dart';
import 'package:web_app/view/widgets/tablet/widgets/item_filter_web_widget.dart';

class TabletScreen extends StatelessWidget {
  const TabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      HiderTabletWidget(),
     ItemFilterTabletWidget(),
    ],);
  }
}