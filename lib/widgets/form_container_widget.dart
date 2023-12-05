import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/style.dart';

class FormContainerWidget extends StatefulWidget {
  final String txt;
  final String hintText;
  final TextEditingController? controller;
  final Color? color;
  final Icon? icon;
  final bool isDropdown;
  final bool isPasswordVisible;
  final ValueChanged<bool>? onPasswordVisibilityChanged;

  const FormContainerWidget({
    Key? key,
    required this.hintText,
    this.controller,
    required this.txt,
    this.color = const Color(0xFFDADADA),
    this.icon,
    this.isDropdown = false,
    this.isPasswordVisible = true,
    this.onPasswordVisibilityChanged,
  }) : super(key: key);

  @override
  _FormContainerWidgetState createState() => _FormContainerWidgetState();
}

class _FormContainerWidgetState extends State<FormContainerWidget> {
  String dropdownValue = '+123'; // State for dropdown value

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.txt, style: name()),
        SizedBox(height: 10.h),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          width: double.infinity,
          height: 50.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.sp),
            border: Border.all(color: widget.color!),
          ),
          child: widget.isDropdown
              ? Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: 72.w,
                height: 26.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.sp),
                  border: Border.all(color: Colors.grey),
                ),
                child: DropdownButton<String>(
                  isExpanded: true,
                  underline: const SizedBox(),
                  value: dropdownValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: ['+123', '+456', '+789'].map<DropdownMenuItem<String>>(
                        (String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value, style: const TextStyle(color: Colors.black)),
                      );
                    },
                  ).toList(),
                  icon: const Icon(Icons.arrow_drop_down, color: Colors.grey),
                  iconSize: 25.0,
                  style: eg(),
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: TextFormField(
                  obscureText: widget.txt.toLowerCase().contains('password')
                      ? !widget.isPasswordVisible
                      : false,
                  decoration: InputDecoration(
                    hintText: widget.hintText,
                    hintStyle: eg(),
                    suffixIcon: widget.isPasswordVisible
                        ? widget.icon
                        : IconButton(
                      icon: const Icon(Icons.visibility_off_outlined),
                      onPressed: () {
                        widget.onPasswordVisibilityChanged?.call(
                          !widget.isPasswordVisible,
                        );
                      },
                    ),
                    iconColor: const Color(0xFF5CCB6D),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          )
              : TextFormField(
            obscureText: widget.txt.toLowerCase().contains('password')
                ? !widget.isPasswordVisible
                : true,
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: eg(),
              suffixIcon: widget.isPasswordVisible
                  ? widget.icon
                  : IconButton(
                icon: const Icon(Icons.visibility_off_outlined),
                onPressed: () {
                  widget.onPasswordVisibilityChanged?.call(
                    !widget.isPasswordVisible,
                  );
                },
              ),
              iconColor: const Color(0xFF5CCB6D),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
