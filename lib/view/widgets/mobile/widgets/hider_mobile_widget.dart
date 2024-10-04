import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_app/core/app_colors.dart';
import 'package:web_app/core/app_const.dart';

class HiderMobileWidget extends StatelessWidget {
  const HiderMobileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 8.w,
                ),
                InkWell(
                  onTap: () {},
                  child: SvgPicture.asset(
                    AppConst.svgPath + 'menu.svg',
                    height: 25.h,
                    width: 25.w,
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
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
                  padding:
                      EdgeInsets.only(left: 5.w, right: 10.w, bottom: 15.h),
                  child: Row(
                    children: [
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
                                  AssetImage(AppConst.imagePath + 'user.png'),
                              // backgroundImage:,
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
