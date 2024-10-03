import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_app/core/app_const.dart';

class ItemFilterWebWidget extends StatelessWidget {
  const ItemFilterWebWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 10.h),
      child: Row(
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
               width: 48.w,
            height: 48.h,
            ),
          ),
          SizedBox(
            width: 8.w,
          ),
          SvgPicture.asset(
            AppConst.svgPath + 'bigLine.svg',
            width:1.h ,
            height:12.w ,
          ),
          SizedBox(
            width: 8.w,
          ),
          InkWell(
            onTap: () {},
            child: SvgPicture.asset(
              AppConst.svgPath + 'Button.svg',
              height: 48.h,
              width: 177.w,
            ),
          ),
        ],
      ),
    );
  }
}
