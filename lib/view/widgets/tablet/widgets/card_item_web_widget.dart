import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_app/core/app_colors.dart';
import 'package:web_app/core/app_const.dart';

class CardItemTabletWidget extends StatelessWidget {
  const CardItemTabletWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Wrap(
            alignment: WrapAlignment.spaceEvenly,
            spacing: 10,
            runSpacing: 10,
            direction: Axis.horizontal,
            children: List.generate(
                AppConst.itemsImages.length,
                (index) => Container(
                      width: 100.w,
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
                                    AppConst.itemsImages[index]),
                                Positioned(
                                  top: 5,
                                  right: 5,
                                  child: InkWell(
                                    onTap: () {},
                                    child: SvgPicture.asset(
                                      AppConst.svgPath + 'filterItem.svg',
                                      height: 30.h,
                                      width: 30.w,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 5.w,
                                  bottom: 1.h,
                                  child: InkWell(
                                    onTap: () {},
                                    child: SvgPicture.asset(
                                      AppConst.svgPath + 'Labels.svg',
                                      width: 70.w,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5.w, vertical: 5.h),
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
                                        fontSize: 8.sp,
                                        overflow: TextOverflow.ellipsis,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset(
                                      AppConst.svgPath + 'calendar.svg',
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    SizedBox(
                                      width: .15.sw,
                                      child: Text(
                                        '5 Nights (Jan 16 - Jan 20, 2024)',
                                        style: TextStyle(
                                            fontSize: 4.sp,
                                            fontWeight: FontWeight.w400,
                                            overflow: TextOverflow.ellipsis,
                                            color: AppColors.disPlayColor),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Divider(
                                  height: .2.h,
                                  color: Color(0xff262626),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 30.h,
                                      width: 30.w,
                                      child: Image.asset(
                                          AppConst.imagePath + 'groupUser.png',
                                          ),
                                    ),
                                    Spacer(),
                                    Text(
                                      '4 unfinished tasks',
                                      style: TextStyle(
                                          fontSize: 5.sp,
                                          overflow: TextOverflow.ellipsis,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.disPlayColor),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          // SizedBox(
                          //   height: 15.h,
                          // ),
                        ],
                      ),
                    )),
          )),
    );
  }
}
