import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hmis_web/shared/components/components.dart';
import 'package:hmis_web/shared/cubit/cubit.dart';
import 'package:hmis_web/shared/cubit/states.dart';
import 'package:hmis_web/shared/styels/colors.dart';

import '../../auth/sign_in_screen.dart';
import '../../auth/sign_up_screen.dart';
import '../../home_body/departments_index.dart';
import '../../home_body/home_index.dart';

import '../../home_body/our_doctors_index.dart';

class AppointmentNav extends StatelessWidget {
  const AppointmentNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var width = MediaQuery.of(context).size.width;
        var height = MediaQuery.of(context).size.height;
        AppCubit cubit = AppCubit.get(context);

        return SizedBox(
          width: width,
          child: Scaffold(
              body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                header(
                  widthImage: width,
                  heightImage: height * 50 / 100,
                  image: 'assets/image/main/doctor.jpg',
                  text: 'APPOINTMENTS',
                ),
                SizedBox(height: height * 10 / 100),
                Container(
                  width: width <= 1400 ? 600 : width * 60 / 100,
                  margin: EdgeInsets.symmetric(horizontal: width * 1 / 100),
                  decoration: BoxDecoration(
                    color: Color(0xffE7F1F1),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(70),
                      bottomLeft: Radius.circular(70),
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        vertical: height * 10 / 100,
                        horizontal: width * 5 / 100),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'UPCOMING',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                            color: MyColors.cPrimary,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        SizedBox(height: height * 1 / 100),
                        Text(
                          'You have an Appointment with',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: height * 3 / 100),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: height * 3 / 100),
                            child: Row(
                              children: [
                                Wrap(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          'assets/image/main/doc.png'),
                                      width: 100,
                                      height: 65,
                                    ),
                                    Wrap(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: width * 1 / 100),
                                          child: rich_4Text(
                                            firstText: 'With:\n',
                                            secondText: 'Doctor Name:\n',
                                            thirdText: 'On:\n',
                                            fourthText: 'Sunday  00/00/0000\n',
                                            fifthText:
                                                'From  00:00 AM  To  00:00 PM\n',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: height * 10 / 100),
                Container(
                  width: width <= 1400 ? 600 : width * 60 / 100,
                  margin: EdgeInsets.symmetric(horizontal: width * 1 / 100),
                  decoration: BoxDecoration(
                    color: Color(0xffE7F1F1),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(70),
                      bottomLeft: Radius.circular(70),
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        vertical: height * 10 / 100,
                        horizontal: width * 5 / 100),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'PAST',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                            color: MyColors.cPrimary,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        SizedBox(height: height * 10 / 100),
                        Center(
                          child: Image(
                            image:
                                AssetImage('assets/image/main/calender_2.png'),
                            width: 200,
                            height: 200,
                          ),
                        ),
                        SizedBox(height: height * 5 / 100),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'You Have No Appointments',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff7A7A7A),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: height * 10 / 100),
                //footter
                footer(width: width, height: height),
              ],
            ),
          )),
        );
      },
    );
  }
}
