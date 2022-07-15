import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hmis_web/moudules/home_body/departments_index.dart';
import 'package:hmis_web/moudules/home_body/home_index.dart';
import 'package:hmis_web/moudules/home_body/medical_history_index.dart';
import 'package:hmis_web/moudules/home_body/our_doctors_index.dart';
import 'package:hmis_web/shared/cubit/cubit.dart';
import 'package:hmis_web/shared/cubit/states.dart';
import 'package:hmis_web/shared/styels/colors.dart';

import '../../moudules/Doctor_/main_menu_screen/main_menu.dart';
import '../../moudules/auth/sign_in_screen.dart';
import '../../moudules/auth/sign_up_screen.dart';
import '../../moudules/lab/lab_main_menu/lab_main.dart';
import '../../moudules/patient_body/my_profile_patient/my_profile_patient_screen.dart';
import '../../moudules/pharmacy/main_menu/main_phar.dart';
import '../../moudules/radiology/rad_main_menu/rad_main_menu.dart';
import '../../shared/components/components.dart';
import '../dashbord_layout/dashbord.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        double width = MediaQuery.of(context).size.width;
        double height = MediaQuery.of(context).size.height;
        final cubit = AppCubit.get(context);
        List body = [
          const HomeIndex(),
          const DepartmentsIndex(),
          const OurDoctorsIndex(),
          const MedicalHistoryIndex(),
        ];
        return Scaffold(
          endDrawer: Container(
            child: Drawer(
              backgroundColor: MyColors.cPrimary,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage(
                              "assets/Image/dashbord/myProfile2.png"),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Patient Name",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        navigateTo(context, MyProfile());
                      },
                      child: Text(
                        "My Profile",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        navigateTo(context, lab_Main());
                      },
                      child: Text(
                        "Lab Test",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        navigateTo(context, Rad_Main());
                      },
                      child: Text(
                        "Radiology Test",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        navigateTo(context, Main_Menu_Pharmacy_screen());
                      },
                      child: Text(
                        "Pharmacy",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        navigateTo(context, Main_Menu_screen());
                      },
                      child: Text(
                        "Doctor",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        navigateTo(context, Dashbord());
                      },
                      child: Text(
                        "Doctor DashBord",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          appBar: AppBar(
            iconTheme: IconThemeData(color: MyColors.cPrimary),
            elevation: 0,
            toolbarHeight: width <= 1000 ? 120 : 80,
            flexibleSpace: width <= 1000
                ? Container(
                    padding: EdgeInsets.symmetric(horizontal: width * 2 / 100),
                    width: width,
                    margin: EdgeInsets.symmetric(
                        vertical: height * 1 / 100, horizontal: 10),
                    child: Wrap(
                      verticalDirection: VerticalDirection.up,
                      alignment: WrapAlignment.end,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            GestureDetector(
                              onTap: () {
                                navigateTo(context, HomeLayout());
                              },
                              child: Container(
                                child: Image.asset(
                                  'assets/image/logo/bar.png',
                                  width: width < 600 ? 0 : width * 14 / 100,
                                ),
                              ),
                            ),
                            Spacer(),
                            Center(
                              child: Container(
                                height: 50,
                                child: ListView.separated(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: cubit.buttonsTitleList.length,
                                  separatorBuilder: (context, index) =>
                                      Container(),
                                  itemBuilder: (context, index) =>
                                      AppBarTextButton(
                                    text: cubit.buttonsTitleList[index].title,
                                    select: cubit
                                        .buttonsTitleList[index].isSelected,
                                    onPressed: () {
                                      cubit.changeIndexOfHome(index);
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            signUp(
                                height: 50,
                                text: 'SIGN UP',
                                Pressed: () {
                                  navigateTo(context, SignUP());
                                }),
                            SizedBox(width: width * 1 / 100),
                            logIn(
                                height: 50,
                                text: 'LOG IN',
                                Pressed: () {
                                  navigateTo(context, Login());
                                }),
                          ],
                        ),
                      ],
                    ),
                  )
                : Container(
                    padding: EdgeInsets.symmetric(horizontal: width * 2 / 100),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            navigateTo(context, HomeLayout());
                          },
                          child: Image.asset(
                            'assets/image/logo/bar.png',
                            width: width < 800 ? 0 : width * 12 / 100,
                          ),
                        ),
                        Spacer(),
                        Center(
                          child: Container(
                            height: 50,
                            child: ListView.separated(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: cubit.buttonsTitleList.length,
                              separatorBuilder: (context, index) => Container(),
                              itemBuilder: (context, index) => AppBarTextButton(
                                text: cubit.buttonsTitleList[index].title,
                                select:
                                    cubit.buttonsTitleList[index].isSelected,
                                onPressed: () {
                                  cubit.changeIndexOfHome(index);
                                },
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            signUp(
                                height: 50,
                                text: 'SIGN UP',
                                Pressed: () {
                                  navigateTo(context, SignUP());
                                }),
                            SizedBox(width: width * 1 / 100),
                            logIn(
                                height: 50,
                                text: 'LOG IN',
                                Pressed: () {
                                  navigateTo(context, Login());
                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
          ),
          body: body[cubit.currentIndexOfHome],
        );
      },
    );
  }
}

class AppBarTextButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? text;
  final bool? select;

  const AppBarTextButton(
      {Key? key, this.onPressed, this.text, this.select = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        '$text',
        style: TextStyle(
          color: select == true ? MyColors.cErrorColor : MyColors.cPrimary,
          fontSize: 15.0.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class MyTextButtonBar {
  final String title;
  bool isSelected;

  MyTextButtonBar(this.title, this.isSelected);
}
