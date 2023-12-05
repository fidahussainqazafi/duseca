import 'package:duseca/const/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Button_ContainerWidget extends StatefulWidget {
  final double? width;
  final double? height;
  final String? title;
  final VoidCallback? onTap;


  const Button_ContainerWidget({
    Key? key,
    this.width = double.infinity,
    this.height = 60,
    required this.title,
    this.onTap,

  }) : super(key: key);

  @override
  State<Button_ContainerWidget> createState() => _Button_ContainerWidgetState();
}

class _Button_ContainerWidgetState extends State<Button_ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: const Color(0xFFE92928),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Center(
          child: Text(
              widget.title!, // Use widget.title to access the title
              style: create(),
            ),
        ),
        ),

    );
  }
}
