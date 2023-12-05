import 'package:duseca/const/consts.dart';
import 'package:duseca/screens/book_seat_screen.dart';
import 'package:duseca/screens/ride_history_screen.dart';
import 'package:duseca/widgets/button_container_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/style.dart';

class Earning_Screen extends StatefulWidget {
  const Earning_Screen({Key? key}) : super(key: key);

  @override
  State<Earning_Screen> createState() => _Earning_ScreenState();
}

class _Earning_ScreenState extends State<Earning_Screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Number of tabs
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 40),
          child: Column(
            children: [
              SizedBox(height: 50.h),
              Row(
                children: [
                  SizedBox(width: 50.h),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Ride_History_Screen()));
                      },
                      child: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.red),
                    ),
                  ),
                  SizedBox(width: 70.w),
                  Text(
                    'Driver Info.',
                    style: ride(),
                  ),

                ],
              ),
              SizedBox(height: 30.h),
              Container(
                width: double.infinity,
                height: 60.h,
                color: Color(0xFF54221),
                child: TabBar(
                  tabs: [
                    Tab(
                      child: const Text(
                        'Earnings',style: TextStyle(color: Colors.red),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'No.Rides', style: TextStyle(color: Colors.red),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Billings',style: TextStyle(color: Colors.red),

                      ),
                    ),
                    Tab(
                      child: Text(
                        'Reviews',style: TextStyle(color: Colors.red),

                      ),
                    ),
                  ],
                  indicatorColor: Colors.red, // Set the color of the tab indicator
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [

                    Container(

                      color: Colors.white,
                      child: Stack(
                        children: [
                          Positioned(
                              top: 100.h,
                              right: 120.w,
                              child: Button_ContainerWidget(
                                title: '20zt',
                                width: 60.w,
                                height: 25.h,
                              ),

                          ),

                          Positioned(
                            top: 122.h,
                              right: 145.w,
                              child: Container(
                                 width: 8.w,
                                height: 6.h,
                                color: Colors.red,
                          )),

                          Positioned(
                            top: 70.h,
                              right: 60.w,
                              child: Row(
                                children: [
                                  Icon(Icons.arrow_drop_up_outlined,color: Colors.red,),
                                  Text('This week',style: TextStyle(
                                    color: Colors.red,fontSize: 8.sp,fontWeight: FontWeight.w700
                                  ),),
                                ],
                          )),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 70.h,),
                               Text('Your Earnings',style: TextStyle(color: Colors.grey),),


                                SizedBox(height: 50.h,),
                                Image.asset(im_cahrt),
                                SizedBox(height: 20.h,),
                                Row(
                                  children: [
                                    Text('Sat',style: TextStyle(
                                        fontSize: 9.sp,fontWeight: FontWeight.w800,color: Color(0xFFB0BBD5))),
                                    SizedBox(width: 25.w,),
                                    Text('Sun',style: TextStyle(
                                        fontSize: 9.sp,fontWeight: FontWeight.w800,color: Color(0xFFB0BBD5))),
                                    SizedBox(width: 25.w,),
                                    Text('Mon',style: TextStyle(
                                        fontSize: 9.sp,fontWeight: FontWeight.w800,color: Color(0xFFB0BBD5))),
                                    SizedBox(width: 25.w,),
                                    Text('Tue',style: TextStyle(
                                        fontSize: 9.sp,fontWeight: FontWeight.w800,color: Color(0xFFB0BBD5))),
                                    SizedBox(width: 20.w,),
                                    Text('Wed',style: TextStyle(
                                        fontSize: 9.sp,fontWeight: FontWeight.w800,color: Color(0xFFB0BBD5))),
                                    SizedBox(width: 20.w,),
                                    Text('Thr',style: TextStyle(
                                        fontSize: 9.sp,fontWeight: FontWeight.w800,color: Color(0xFFB0BBD5))),
                                    SizedBox(width: 25.w,),
                                    Text('Fri',style: TextStyle(
                                        fontSize: 9.sp,fontWeight: FontWeight.w800,color: Color(0xFFB0BBD5))),

                                  ],
                                ),
                                SizedBox(height: 30.h,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('200.68.00 zł',style: TextStyle(
                                        fontSize: 22.sp,fontWeight: FontWeight.w700,color: Color(0xFF010000))),
                                   SizedBox(width: 50.w,),
                                   Button_ContainerWidget(
                                       title: 'withdraw',
                                   width: 100.w,
                                   height: 40.h,)
                                  ],
                                ),

                                SizedBox(height: 60.h,),

                                Divider(
                                  color: Colors.grey,
                                  thickness: 1,

                                ),

                              ],
                            ),
                          ),
                        ],
                      )
                    ),

                    Container(
                      color: Colors.white,
                      child: Center(
                        child: Text('No of Ride'),
                      ),
                    ),
                    // Widgets for Tab 3
                    Container(
                      color: Colors.white,
                      child: Center(
                        child: Text('Billings Screen'),
                      ),
                    ),
                    // Widgets for Tab 4
                    Container(
                      color: Colors.white,
                      child: Center(
                        child: Text('Reviews'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
