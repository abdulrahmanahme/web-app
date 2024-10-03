import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_app/core/app_colors.dart';
import 'package:web_app/core/app_const.dart';

class HiderTabletWidget extends StatelessWidget {
  const HiderTabletWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: .12.sh,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10.h),
                  child: SvgPicture.asset(
                    AppConst.svgPath + 'logo.svg',
                    height: 25.h,
                    width: 25.w,
                  ),
                ),
                Spacer(),
                Padding(
                  padding:  EdgeInsets.only(top: 7.h),
                  child: TabTabletBarWidget(),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 10.w, right: 20.w, bottom: 15.h),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        AppConst.svgPath + 'line.svg',
                        height: 20.h,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      InkWell(
                        onTap: () {},
                        child: SvgPicture.asset(
                          AppConst.svgPath + 'Iconsseting.svg',
                          width: 18.w,
                          height: 20.h,
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      InkWell(
                        onTap: () {},
                        child: SvgPicture.asset(
                          AppConst.svgPath + 'bell.svg',
                          width: 18.w,
                          height: 20.h,
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      SvgPicture.asset(
                        AppConst.svgPath + 'line2.svg',
                        height: 20.h,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.grey[200],
                              foregroundImage:
                                  AssetImage(AppConst.svgImage + 'user.png'),
                              // backgroundImage:,
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text(
                              'John Doe',
                              style: TextStyle(
                                  fontSize: 5.sp,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            SvgPicture.asset(
                              AppConst.svgPath + 'arrow_down.svg',
                              height: 14.h,
                              width: 14.w,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: .2.h,
            width: 1.sw,
            color: AppColors.dividerColor,
          ),
        ],
      ),
    );
  }
}

class TabTabletBarWidget extends StatefulWidget {
  const TabTabletBarWidget({
    super.key,
  });

  @override
  State<TabTabletBarWidget> createState() => _TabTabletBarWidgetState();
}

class _TabTabletBarWidgetState extends State<TabTabletBarWidget> {
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.green,
      height: .06.sh,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: AppConst.tapBarTitles.length,
          shrinkWrap: true,
          itemBuilder: (context, int index) {
            return ItemTabBar(
              item: AppConst.tapBarTitles[index],
              onTap: () {
                setState(() {
                  selectedItem = index;
                });
              },
              selectedItem: selectedItem,
              currentIndex: index,
            );
          }),
    );
  }
}

class ItemTabBar extends StatelessWidget {
  const ItemTabBar({
    super.key,
    required this.item,
    required this.selectedItem,
    required this.onTap,
    required this.currentIndex,
  });
  final String item;
  final void Function()? onTap;
  final int selectedItem;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 0.h),
            child: Text(
              item,
              style: TextStyle(
                  fontSize: 5.sp,
                  fontWeight: selectedItem == currentIndex
                      ? FontWeight.w400
                      : FontWeight.normal,
                  color: selectedItem == currentIndex
                      ? Colors.white
                      : AppColors.disPlayColor),
            ),
          ),
        ),
        const Spacer(),
        if (selectedItem == currentIndex)
          Padding(
            padding: EdgeInsets.only(top: 0.h),
            child: Container(
              height: 2.2.h,
              width: 15.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.defaultColor,
              ),
            ),
          )
      ],
    );
  }
}
