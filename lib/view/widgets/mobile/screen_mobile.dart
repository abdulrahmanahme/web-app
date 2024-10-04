import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_app/core/app_colors.dart';
import 'package:web_app/core/app_const.dart';
import 'package:web_app/view/widgets/mobile/widgets/filter_item_mobile_widget.dart';
import 'package:web_app/view/widgets/mobile/widgets/hider_mobile_widget.dart';

class ScreenMobile extends StatelessWidget {
  const ScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HiderMobileWidget(),
        const ItemFilterMobileWidget(),
        Expanded(
            child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                itemCount: AppConst.itemsTitles.length,
                itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h),
                      child: Container(
                        // height: 100.h,
                        // width: 100.w,
                        decoration: BoxDecoration(
                          color: Color(0xff171717),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: double.infinity,
                              child: Stack(
                                alignment: Alignment.bottomLeft,
                                fit: StackFit.loose,
                                children: [
                                  Image.asset(AppConst.imagePath +
                                      AppConst.itemsImages[index],
                                      ),
                                  Positioned(
                                    top: 5,
                                    right: 5,
                                    child: InkWell(
                                      onTap: () {},
                                      child: SvgPicture.asset(
                                        AppConst.svgPath + 'filterItem.svg',
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 5.w,
                                    bottom: 10.h,
                                    child: InkWell(
                                      onTap: () {},
                                      child: SvgPicture.asset(
                                        AppConst.svgPath + 'Labels.svg',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.w, vertical: 5.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  SizedBox(
                                    width: .16.sw,
                                    child: Text(
                                      AppConst.itemsTitles[index].toString(),
                                      style: TextStyle(
                                          fontSize: 18.sp,
                                          overflow: TextOverflow.ellipsis,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset(
                                        AppConst.svgPath + 'calendar.svg',
                                      height: 20.h,
                                      width: 17.w,
                                      ),
                                      SizedBox(
                                        width: 6.w,
                                      ),
                                      Text(
                                        '5 Nights (Jan 16 - Jan 20, 2024)',
                                        style: TextStyle(
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.w200,
                                            overflow: TextOverflow.ellipsis,
                                            color: AppColors.disPlayColor),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 18.h,
                                  ),
                                  Divider(
                                    height: .2.h,
                                    color: Color(0xff262626),
                                  ),
                                  SizedBox(
                                    height: 18.h,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 30.h,
                                        child: Image.asset(AppConst.imagePath +
                                            'groupUser.png'),
                                      ),
                                      Spacer(),
                                      Text(
                                        '4 unfinished tasks',
                                        style: TextStyle(
                                            fontSize: 15.sp,
                                            overflow: TextOverflow.ellipsis,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.disPlayColor),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                          ],
                        ),
                      ),
                    )))
      ],
    );
  }
}
