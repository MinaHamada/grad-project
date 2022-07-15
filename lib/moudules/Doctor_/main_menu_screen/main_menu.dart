import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hmis_web/layout/doctor_layout/doctor_layout.dart';
import 'package:hmis_web/moudules/Doctor_/total_income_screen/total_income.dart';
import 'package:hmis_web/shared/cubit/cubit.dart';
import 'package:hmis_web/shared/cubit/states.dart';
import 'package:hmis_web/shared/styels/colors.dart';
import '../../../shared/components/components.dart';
import '../data_base_screen/data_base.dart';
import '../presonal_screen/personal_screen.dart';

class Main_Menu_screen extends StatelessWidget {
  const Main_Menu_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return SizedBox(
          width: width,
          child: Scaffold(
            body: Stack(
              children: [
                Container(
                  width: width,
                  height: height,
                  color: MyColors.cPrimary,
                ),
                Center(
                  child: Container(
                    width: width * 90 / 100,
                    height: height * 90 / 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(70),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(
                                'Main Menu',
                                style: TextStyle(
                                  color: MyColors.cPrimary,
                                  fontSize: 40.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Container(
                              width: width <= 1400 ? null : 1230,
                              child: Wrap(
                                alignment: WrapAlignment.center,
                                spacing: width <= 1400 ? width * 5 / 100 : 120,
                                runSpacing: width < 1400 ? width * 8 / 100 : 50,
                                children: [
                                  menuButton(
                                    buttonText: "Customize D.B",
                                    onpressed: () {
                                      navigateTo(
                                          context, Customize_Data_Base());
                                    },
                                  ),
                                  menuButton(
                                    buttonText: "Patient Sheet",
                                    onpressed: () {
                                      navigateTo(context, DoctorLayout());
                                    },
                                  ),
                                  menuButton(
                                    buttonText: "Patient Personal Data",
                                    onpressed: () {
                                      navigateTo(
                                          context, personal_Date_screen());
                                    },
                                  ),
                                  menuButton(
                                    buttonText: "Statistics",
                                    onpressed: () {
                                      navigateTo(context, Total_Income());
                                    },
                                  ),
                                ],
                              ),
                            ),
                            // Center(
                            //   child: Container(
                            //     child: Column(
                            //       children: [
                            //         Container(
                            //           child: Wrap(
                            //             spacing: width * 5 / 100,
                            //             runSpacing: width * 8 / 100,
                            //             children: [

                            //             ],
                            //           ),
                            //         ),
                            //       ],
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
