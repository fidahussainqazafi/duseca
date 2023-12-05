import 'package:duseca/const/consts.dart';
import 'package:duseca/const/string.dart';
import 'package:duseca/const/style.dart';
import 'package:duseca/screens/ride_history_screen.dart';
import 'package:duseca/widgets/button_container_widget.dart';
import 'package:duseca/widgets/row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookSeat extends StatefulWidget {
  const BookSeat({Key? key}) : super(key: key);

  @override
  State<BookSeat> createState() => _BookSeatState();
}

class _BookSeatState extends State<BookSeat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          SizedBox(height: 50.h,),
          Text(book_seat,style: bookseat(),),
          SizedBox(height: 30.h,),
          Container(
            height: 60.h,
            color: Color(0xFF54221),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               RowWidget(
                   txt: availabl, color: Colors.green),

                RowWidget(
                    txt: unavailable, color: Color(0xFF97ADB6)),

                RowWidget(
                    txt: selected, color: Colors.red),

              ],
            ),

          ),
          SizedBox(height: 30.h,),
          Image.asset(im_main),
          SizedBox(height: 200,),
          Button_ContainerWidget(
            width: 330.w,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Ride_History_Screen()));
              },
              title: 'Select Seat'

            ),
        ],
      )
    );
  }
}
