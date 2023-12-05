import 'package:duseca/const/consts.dart';
import 'package:duseca/const/style.dart';
import 'package:duseca/controller/checkbox_controller.dart';
import 'package:duseca/screens/book_seat_screen.dart';
import 'package:duseca/widgets/button_container_widget.dart';
import 'package:duseca/widgets/form_container_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../controller/controller.dart';
import '../controller/radio_controller.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isCheckedController = Provider.of<IsChecked>(context);
    final radioController = Provider.of<RadioController>(context);
    final passwordVisibilityController = Provider.of<PasswordVisibilityController>(context);

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30.h),
              Image.asset(im_logo),
              SizedBox(height: 30.h),
              Text(SignUp_today, style: signup_todayStyle()),
              SizedBox(height: 10.h),
              Text(provide, style: provided()),
              const SizedBox(height: 20),
              const FormContainerWidget(hintText: eg_Jonn_Doe, txt: 'Your Name'),
              const SizedBox(height: 18),
              const FormContainerWidget(
                hintText: 'youremail@gmail.com',
                txt: 'Your Email',
                color: Color(0xFF5CCB6D),
                icon: Icon(Icons.task_alt_outlined, color: Colors.green),
              ),
              SizedBox(height: 20.h),
              const FormContainerWidget(
                isDropdown: true,
                hintText: '310-xxxxxxxx',
                txt: 'Phone no*',
              ),
              SizedBox(height: 18.h),
              FormContainerWidget(
                hintText: '**************',
                icon: const Icon(Icons.visibility_outlined),
                txt: 'Password',
                isPasswordVisible: passwordVisibilityController.isPasswordVisible,
                onPasswordVisibilityChanged: (value) {
                  passwordVisibilityController.isPasswordVisible = value;
                },
              ),
              SizedBox(height: 18.h),
              FormContainerWidget(
                hintText: '**************',
                icon: const Icon(Icons.visibility_outlined),
                txt: 'Confirm password',
                isPasswordVisible: passwordVisibilityController.isPasswordVisible,
                onPasswordVisibilityChanged: (value) {
                  passwordVisibilityController.isPasswordVisible = value;
                },
              ),
              SizedBox(height: 18.h),
              Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: radioController.selectedRadio,
                    onChanged: (value) {
                      radioController.selectedRadio = value as int;
                    },
                  ),
                  const Text('Passenger'),
                  const SizedBox(width: 18),
                  Radio(
                    value: 2,
                    groupValue: radioController.selectedRadio,
                    onChanged: (value) {
                      radioController.selectedRadio = value as int;
                    },
                  ),
                  const Text('Driver'),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: isCheckedController.isChecked,
                    onChanged: (value) {
                      isCheckedController.isChecked = value!;
                    },
                  ),
                  SizedBox(width: 5.w),
                  Text(must_be, style: must()),
                ],
              ),
              const SizedBox(height: 20),
              Button_ContainerWidget(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const BookSeat()),
                  );
                },
                title: 'Create Account',
              ),
            ],
          ),
        ),
      ),
    );
  }
}