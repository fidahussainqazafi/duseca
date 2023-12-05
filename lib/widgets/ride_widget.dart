import 'package:duseca/const/consts.dart';
import 'package:duseca/const/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Ride_Widget extends StatelessWidget {
  const Ride_Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 296.w,
      height: 113.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(
          color: Colors.grey, // Set the border color to grey
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(im_col),

                  ],
                ),
              ],
            ),
            Positioned(
              top: 10.h,
              left: 57.w,
              child: Row(
                children: [
                  Container(
                    width: 10.w,
                    height: 10.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green, // set the color of the circle
                      )
                  ),
                  SizedBox(width: 10.w,),
                  Text('Gorzow'),
                ],
              ),
            ),

            Positioned(
              top: 27.h,
              left: 60.w,

              child: Container(
                width: 2.w,
                height: 23.h,
                color: Colors.black,
              ),),
            Positioned(
              top: 42.h,
              left: 50.w,
              child:   Row(
              children: [
                Icon(Icons.arrow_drop_down,color: Colors.red,),
                Text('Berlin Airport'),
              ],
            ),),
            Positioned(
                left: 5.w,
                bottom: -2.h,
                child: Image.asset(van)
            ),

            Positioned(
              top: 30.h,
                right: 20.w,
                child:Column(
                  children: [
                    Text('\$ 45.99',style: price(),),
                    SizedBox(height: 10.h,),
                    Row(
                      children: [
                        Icon(Icons.add_location_rounded,color: Colors.red,size: 12.sp,),
                        SizedBox(width: 5.w,),
                        Text('Germany',style: eg(),),
                      ],
                    )
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}
