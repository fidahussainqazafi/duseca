import 'package:duseca/const/style.dart';
import 'package:duseca/screens/book_seat_screen.dart';
import 'package:duseca/screens/earning_screen.dart';
import 'package:duseca/widgets/ride_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Ride_History_Screen extends StatefulWidget {
  const Ride_History_Screen({Key? key}) : super(key: key);

  @override
  State<Ride_History_Screen> createState() => _Ride_History_ScreenState();
}

class _Ride_History_ScreenState extends State<Ride_History_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 30,vertical: 40),
        child: Column(
          children: [
            SizedBox(height: 50.h,),

            Row(
              children: [
                SizedBox(height: 50.h,),
                CircleAvatar(
                  backgroundColor: Colors.white,
                    child: InkWell(
                        onTap: (){
                          
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>BookSeat()));
                        },
                        child: Icon(Icons.arrow_back_ios_new_rounded,color: Colors.red,))),
                SizedBox(width: 70.w),
                Text('Ride history',style: ride(),),
                SizedBox(width: 60.w,),
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Earning_Screen()));
                    },
                    child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.red,)),
              ],
            ),
            SizedBox(height: 30.h,),
            Ride_Widget(),
            SizedBox(height: 20.h,),
            Ride_Widget(),
            SizedBox(height: 20.h,),
            Ride_Widget(),
          ],
        ),
      ),
    );
  }
}
