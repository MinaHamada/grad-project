import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hmis_web/moudules/Doctor_/fees_due_screen/fd.dart';
import 'package:hmis_web/moudules/Doctor_/press_date_screen/press_date.dart';
import 'package:hmis_web/moudules/Doctor_/procedures_screen/procedures.dart';
import 'package:hmis_web/moudules/Doctor_/treatment_screen/treatment.dart';
import 'package:hmis_web/shared/components/components.dart';
import 'package:hmis_web/shared/cubit/cubit.dart';
import 'package:hmis_web/shared/cubit/states.dart';
import 'package:hmis_web/shared/styels/colors.dart';

import '../../moudules/Doctor_/main_menu_screen/main_menu.dart';
import '../../moudules/Doctor_/patientsheet_screen/patientsheet.dart';
import '../../moudules/Doctor_/request/doc_request.dart';
import '../../moudules/Doctor_/search_screen/search.dart';

class DoctorLayout extends StatelessWidget {
  const DoctorLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    List body = [
      PatientSheet(),
      Press_Date(),
      Treatment(),
      Procedures(),
      FD(),
      Doc_request(),
    ];

    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        AppCubit cubit = AppCubit.get(context);
        return Container(
          width: width,
          child: Scaffold(
            body: Row(
              children: [
                Container(
                  width: 50,
                  color: MyColors.cPrimary,
                  padding: EdgeInsets.symmetric(
                    vertical: height * 15 / 100,
                  ),
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
                      SizedBox(height: 30),
                      IconButton(
                        onPressed: () {
                          navigateTo(context, Search_patient());
                        },
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      SizedBox(height: 30),
                      IconButton(
                        onPressed: () {},
                        icon: Image(
                          image: AssetImage("image/fIcon/save.png"),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    height: cubit.currentIndexOfPatient == 5
                        ? width <= 1400
                            ? null
                            : height
                        : width <= 1366
                            ? null
                            : height,
                    width: width - 50,
                    color: Color(0xffF1F1FF),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: width < 1000 ? 10 : width * 3 / 100,
                              vertical: height * 2 / 100),
                          color: Colors.white,
                          child: Column(
                            children: [
                              Container(
                                child: width <= 600
                                    ? Wrap(
                                        alignment: WrapAlignment.start,
                                        spacing: width * 10 / 100,
                                        runSpacing: 20,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: 'Patient ID : ',
                                                      style: TextStyle(
                                                        color: Color(0xff213770)
                                                            .withOpacity(
                                                                60 / 100),
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: ' 012M7PD5',
                                                      style: TextStyle(
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                  height: height * 3 / 100),
                                              RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: 'Patient Name: : ',
                                                      style: TextStyle(
                                                        color: Color(0xff213770)
                                                            .withOpacity(
                                                                60 / 100),
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: ' Nada Refaee',
                                                      style: TextStyle(
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          cubit.currentIndexOfPatient == 4 ||
                                                  cubit.currentIndexOfPatient ==
                                                      1
                                              ? Text("")
                                              : RichText(
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: 'VISIT DATE\n',
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xff213770)
                                                                  .withOpacity(
                                                                      60 / 100),
                                                          fontSize: 15.sp,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: '22/03/2022',
                                                        style: TextStyle(
                                                            fontSize: 15.sp,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            height: 2),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                          cubit.currentIndexOfPatient == 0
                                              ? Container(
                                                  padding: EdgeInsets.all(7),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: MyColors.cPrimary,
                                                  ),
                                                  child: TextButton(
                                                    onPressed: () {},
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Icon(
                                                          Icons.add,
                                                          color: Colors.white,
                                                        ),
                                                        SizedBox(
                                                            width: width *
                                                                .5 /
                                                                100),
                                                        Text(
                                                          'NEW SHEET',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 13.sp),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              : Container(),
                                        ],
                                      )
                                    : Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: 'Patient ID : ',
                                                      style: TextStyle(
                                                        color: Color(0xff213770)
                                                            .withOpacity(
                                                                60 / 100),
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: ' 012M7PD5',
                                                      style: TextStyle(
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                  height: height * 3 / 100),
                                              RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: 'Patient Name: : ',
                                                      style: TextStyle(
                                                        color: Color(0xff213770)
                                                            .withOpacity(
                                                                60 / 100),
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: ' Nada Refaee',
                                                      style: TextStyle(
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          cubit.currentIndexOfPatient == 4 ||
                                                  cubit.currentIndexOfPatient ==
                                                      1
                                              ? Text("")
                                              : RichText(
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: 'VISIT DATE\n',
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xff213770)
                                                                  .withOpacity(
                                                                      60 / 100),
                                                          fontSize: 15.sp,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: '22/03/2022',
                                                        style: TextStyle(
                                                            fontSize: 15.sp,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            height: 2),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                          cubit.currentIndexOfPatient == 0
                                              ? Container(
                                                  padding: EdgeInsets.all(7),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: MyColors.cPrimary,
                                                  ),
                                                  child: TextButton(
                                                    onPressed: () {},
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Icon(
                                                          Icons.add,
                                                          color: Colors.white,
                                                        ),
                                                        SizedBox(
                                                            width: width *
                                                                .5 /
                                                                100),
                                                        Text(
                                                          'NEW SHEET',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 13.sp),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              : Container(),
                                        ],
                                      ),
                              ), //top-header
                              SizedBox(height: 20),
                              Container(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 50,
                                      child: ListView.separated(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount:
                                            cubit.patientTitleList.length,
                                        separatorBuilder: (context, index) =>
                                            Container(),
                                        itemBuilder: (context, index) =>
                                            AppBarPatientSheetTextButton(
                                          text: cubit
                                              .patientTitleList[index].title,
                                          select: cubit.patientTitleList[index]
                                              .isSelected,
                                          onPressed: () {
                                            cubit.changeIndexOfPatientSheet(
                                                index);
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ), //bar
                            ],
                          ),
                        ), //header
                        Container(
                          child: body[cubit.currentIndexOfPatient],
                        ), //body
                      ],
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

class AppBarPatientSheetTextButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? text;
  final bool? select;

  const AppBarPatientSheetTextButton(
      {Key? key, this.onPressed, this.text, this.select = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return TextButton(
      onPressed: onPressed,
      child: Text(
        '$text',
        style: TextStyle(
          decorationColor: MyColors.cPrimary,
          decorationThickness: 2,
          shadows: [
            Shadow(
              offset: Offset(0, -8),
              color: select == true
                  ? MyColors.cPrimary
                  : Color(0xff0F357A).withOpacity(60 / 100),
            )
          ],
          decoration:
              select == true ? TextDecoration.underline : TextDecoration.none,
          color: Colors.transparent,
          fontSize: width <= 600 ? 10.5.sp : 14.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class MyTextButton {
  final String title;
  bool isSelected;

  MyTextButton(this.title, this.isSelected);
}
