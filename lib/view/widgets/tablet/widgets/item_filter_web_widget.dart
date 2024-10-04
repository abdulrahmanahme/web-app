import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_app/core/app_const.dart';

class ItemFilterTabletWidget extends StatelessWidget {
  const ItemFilterTabletWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Items',
              style: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            const Spacer(),
            SizedBox(
              width: 8.w,
            ),
            InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                AppConst.svgPath + 'filter.svg',
                 width: 35.w,
              height: 35.h,
              ),
            ),
            SizedBox(
              width: 8.w,
            ),
            SvgPicture.asset(
              AppConst.svgPath + 'bigLine.svg',
              width:1.2.h ,
              height:15.w ,
            ),
            SizedBox(
              width: 8.w,
            ),
            InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                AppConst.svgPath + 'Button.svg',
                // height: 48.h,
                width: 85.w,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
