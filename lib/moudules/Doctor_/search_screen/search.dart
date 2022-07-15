import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hmis_web/shared/cubit/cubit.dart';
import 'package:hmis_web/shared/cubit/states.dart';
import '../../../shared/components/components.dart';
import '../../../shared/styels/colors.dart';
import '../main_menu_screen/main_menu.dart';

class Search_patient extends StatelessWidget {
  const Search_patient({Key? key}) : super(key: key);

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
            body: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: MyColors.cPrimary,
                  padding: EdgeInsets.symmetric(
                      vertical: height * 15 / 100,
                      horizontal: width * .5 / 100),
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          navigateTo(context, Main_Menu_screen());
                        },
                        icon: Icon(
                          Icons.home,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: SingleChildScrollView(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: width * 5 / 100,
                                vertical: height * 5 / 100),
                            child: Wrap(
                              spacing: width * 40 / 100,
                              runSpacing: 20,
                              children: [
                                Text(
                                  'search for a patient'.toUpperCase(),
                                  style: TextStyle(
                                    color: MyColors.cPrimary,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: width < 1000 ? height * 2.7 : height * 2,
                            child: SizedBox(
                              width: width,
                              child: Scaffold(
                                body: Container(
                                  width: width,
                                  color: Color(0xffF1F1FF),
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: width * 5 / 100,
                                        vertical: height * 5 / 100),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Wrap(
                                          alignment: WrapAlignment.center,
                                          spacing: width * 4.5 / 100,
                                          runSpacing: height * 3 / 100,
                                          children: [
                                            searchPatientField(
                                              hintText: 'Search by First Name',
                                            ),
                                            searchPatientField(
                                              hintText: 'Search by Last Name',
                                            ),
                                            searchPatientField(
                                              hintText:
                                                  'Search by Last Appointment',
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 30),
                                        Container(
                                          width: 170,
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            color: Color(0xff4F96BE),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              'Search'.toUpperCase(),
                                              style: TextStyle(
                                                fontSize: 15.sp,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '3 Results Found',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20.sp),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 30),
                                        Wrap(
                                          runSpacing: height * 2 / 100,
                                          children: [
                                            cardPatientSearch(
                                              width: width,
                                              height: height,
                                              patientName: 'Ahmed Mohammed',
                                              lastAppoinment: '20/03/2022',
                                            ),
                                            cardPatientSearch(
                                              width: width,
                                              height: height,
                                              patientName: 'Ahmed Mostafa',
                                              lastAppoinment: '02/01/2022',
                                            ),
                                            cardPatientSearch(
                                              width: width,
                                              height: height,
                                              patientName: 'Ahmed Gamal',
                                              lastAppoinment: '25/012/2021',
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
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
