import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/style.dart';

class RowWidget extends StatelessWidget {
  final String txt;
  final Color color;
  const RowWidget({Key? key, required this.txt, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 23.h,
          width: 25.w,
          color: color,
        ),
        SizedBox(width: 10.w,),
      Text(txt,style: available(),),

      ],
    );
  }
}
