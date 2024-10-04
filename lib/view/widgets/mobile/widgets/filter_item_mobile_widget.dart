import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_app/core/app_const.dart';

class ItemFilterMobileWidget extends StatelessWidget {
  const ItemFilterMobileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 1.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Items',
              style: TextStyle(
                  fontSize: 16.sp,
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
                height: 35.h,
                width: 35.w,
              ),
            ),
            SizedBox(
              width: 8.w,
            ),
            SvgPicture.asset(
              AppConst.svgPath + 'bigLine.svg',
              width: 1.h,
              height: 15.w,
            ),
          ],
        ),
      ),
    );
  }
}
