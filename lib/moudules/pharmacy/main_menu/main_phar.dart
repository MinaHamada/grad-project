import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hmis_web/shared/cubit/cubit.dart';
import 'package:hmis_web/shared/cubit/states.dart';
import 'package:hmis_web/shared/styels/colors.dart';
import '../../../shared/components/components.dart';
import '../dispense_prescription/dispense_prescription.dart';
import '../drugs/drugs.dart';
import '../drugs_data/drugs_data.dart';
import '../prescription/prescription_phar.dart';

class Main_Menu_Pharmacy_screen extends StatelessWidget {
  const Main_Menu_Pharmacy_screen({Key? key}) : super(key: key);

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
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                            Center(
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Wrap(
                                        spacing: width * 5 / 100,
                                        runSpacing: width * 8 / 100,
                                        children: [
                                          menuButton(
                                            buttonText: "Drugs",
                                            onpressed: () {
                                              navigateTo(context, DRUGS());
                                            },
                                          ),
                                          menuButton(
                                            buttonText: "Drugs Data",
                                            onpressed: () {
                                              navigateTo(context, DRUGS_Data());
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Wrap(
                                        spacing: width * 5 / 100,
                                        runSpacing: width * 8 / 100,
                                        children: [
                                          menuButton(
                                            buttonText: "prescription",
                                            onpressed: () {
                                              navigateTo(
                                                  context, prescription());
                                            },
                                          ),
                                          menuButton(
                                            buttonText: "Dispense Prescription",
                                            onpressed: () {
                                              navigateTo(context,
                                                  Dispense_prescription());
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
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
