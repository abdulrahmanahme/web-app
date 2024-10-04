import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_app/core/app_const.dart';
import 'package:web_app/view/widgets/web/widget/card_item_web_widget.dart';
import 'package:web_app/view/widgets/web/widget/hider_web_widget.dart';
import 'package:web_app/view/widgets/web/widget/item_filter_web_widget.dart';

class WebScreenWidget extends StatelessWidget {
  const WebScreenWidget({super.key ,required this.mainAxisExtent});
  final double mainAxisExtent;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HiderWebWidget(),
          SizedBox(
            height: 30.h,
          ),
         const ItemFilterWebWidget(),
        CardItemWebWidget(mainAxisExtent: mainAxisExtent,),
        ],
      ),
    );
  }
}

