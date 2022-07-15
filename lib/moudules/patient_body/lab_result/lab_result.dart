import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hmis_web/shared/components/components.dart';
import 'package:hmis_web/shared/cubit/cubit.dart';
import 'package:hmis_web/shared/cubit/states.dart';
import 'package:hmis_web/shared/styels/colors.dart';
import '../../../layout/dashbord_layout/dashbord.dart';
import '../../Doctor_/main_menu_screen/main_menu.dart';
import '../../auth/sign_in_screen.dart';
import '../../auth/sign_up_screen.dart';
import '../../home_body/departments_index.dart';
import '../../home_body/home_index.dart';

import '../../home_body/our_doctors_index.dart';
import '../../lab/lab_main_menu/lab_main.dart';
import '../../pharmacy/main_menu/main_phar.dart';
import '../../radiology/rad_main_menu/rad_main_menu.dart';
import '../my_profile_patient/my_profile_patient_screen.dart';

class Lab_Results extends StatelessWidget {
  const Lab_Results({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var width = MediaQuery.of(context).size.width;
        var height = MediaQuery.of(context).size.height;
        var formKey = GlobalKey<FormState>();
        var fillNameController = TextEditingController();
        var fillDateController = TextEditingController();
        AppCubit cubit = AppCubit.get(context);
        List body = [
          const HomeIndex(),
          const DepartmentsIndex(),
          const OurDoctorsIndex(),
          const Lab_Results(),
        ];
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Scaffold(
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
                    ? sharedAppBar(
                        context: context,
                        width: width,
                        height: height,
                        cubit: cubit,
                        singpressed: () {
                          navigateTo(context, SignUP());
                        },
                        logpressed: () {
                          navigateTo(context, Login());
                        })
                    : sharedAppBarTwo(
                        context: context,
                        width: width,
                        height: height,
                        cubit: cubit,
                        singpressed: () {
                          navigateTo(context, SignUP());
                        },
                        logpressed: () {
                          navigateTo(context, Login());
                        })),
            body: cubit.buttonsTitleList[3].isSelected
                ? SingleChildScrollView(
                    child: Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          header(
                            widthImage: width,
                            heightImage: height * 50 / 100,
                            image: 'assets/image/main/doctor.jpg',
                            text: 'LAB RESULTS',
                          ),
                          SizedBox(height: height * 10 / 100),
                          fillName_Date(
                              width: width,
                              height: height,
                              cubit: cubit,
                              image: 'image/main/doc.png'),

                          SizedBox(height: height * 10 / 100),
                          Container(
                            width: width < 1000 ? 600 : width * 60 / 100,
                            margin: EdgeInsets.symmetric(
                                horizontal: width * 1 / 100),
                            padding: EdgeInsets.symmetric(
                                horizontal: width * 5 / 100,
                                vertical: height * 5 / 100),
                            decoration: BoxDecoration(
                              color: Color(0xffE7F1F1),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(70),
                                bottomLeft: Radius.circular(70),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Add A New Filee',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'File Name',
                                      style: TextStyle(
                                        color: MyColors.cPrimary,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: height * 1 / 100,
                                    ),
                                    globalTFormfield(
                                      controller: fillNameController,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 30),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'File Date',
                                      style: TextStyle(
                                        color: MyColors.cPrimary,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: height * 1 / 100),
                                    globalTFormfield(
                                      controller: fillDateController,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 30),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'Attachments',
                                          style: TextStyle(
                                            color: MyColors.cPrimary,
                                            fontSize: 22,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(height: height * 1 / 100),
                                        GestureDetector(
                                          onTap: () async {
                                            FilePickerResult? result =
                                                await FilePicker.platform
                                                    .pickFiles();
                                            if (result == null) return;
                                          },
                                          child: Container(
                                            padding: EdgeInsets.all(50),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: MyColors.cPrimary),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Image(
                                              image: AssetImage(
                                                  'image/main/attachment.png'),
                                              width: 50,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    buttonClicked(
                                      text: 'SAVE',
                                      fontSize: 15,
                                      height: 50,
                                      width: 150,
                                      weight: FontWeight.w500,
                                      Pressed: () {
                                        if (formKey.currentState!.validate()) {
                                          print(fillNameController.text);
                                          print(fillDateController.text);
                                        }
                                      },
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: height * 10 / 100),
                          //footter
                          footer(width: width, height: height),
                        ],
                      ),
                    ),
                  )
                : body[cubit.currentIndexOfHome],
          ),
        );
      },
    );
  }
}
