import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hmis_web/shared/components/components.dart';
import 'package:hmis_web/shared/cubit/cubit.dart';
import 'package:hmis_web/shared/cubit/states.dart';
import 'package:hmis_web/shared/styels/colors.dart';
import '../../../layout/home_layout/home_layout.dart';
import '../../auth/sign_in_screen.dart';
import '../../auth/sign_up_screen.dart';
import '../../home_body/departments_index.dart';
import '../../home_body/home_index.dart';
import '../../home_body/medical_history_index.dart';
import '../../home_body/our_doctors_index.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    var fNameController = TextEditingController();
    var lNameController = TextEditingController();
    var dateOfBirthController = TextEditingController();
    var genderController = TextEditingController();
    var bloodtypeController = TextEditingController();
    var phoneController = TextEditingController();
    var emailController = TextEditingController();
    var materialStatusController = TextEditingController();
    var numOfChildController = TextEditingController();
    var educationController = TextEditingController();
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        List label = [
          'Date of birth',
          'Gender',
          'Blood Type',
          'Phone Number',
          'Email',
          'Marital Status',
          'Number Of Children',
          'Education',
        ];
        List controller = [
          dateOfBirthController,
          genderController,
          bloodtypeController,
          phoneController,
          emailController,
          materialStatusController,
          numOfChildController,
          educationController,
        ];
        var width = MediaQuery.of(context).size.width;
        var height = MediaQuery.of(context).size.height;
        AppCubit cubit = AppCubit.get(context);
        List body = [
          const HomeIndex(),
          const DepartmentsIndex(),
          const OurDoctorsIndex(),
          const MedicalHistoryIndex(),
        ];

        return SizedBox(
          width: width,
          child: Scaffold(
            appBar: AppBar(
                elevation: 0,
                toolbarHeight: width <= 1000 ? 120 : 80,
                flexibleSpace: width <= 1000
                    ? sharedAppBar_profile(
                        width: width,
                        height: height,
                        cubit: cubit,
                        singpressed: () {
                          navigateTo(context, SignUP());
                        },
                        logpressed: () {
                          navigateTo(context, Login());
                        })
                    : sharedAppBar_profileTwo(
                        width: width,
                        height: height,
                        cubit: cubit,
                        singpressed: () {
                          navigateTo(context, SignUP());
                        },
                        logpressed: () {
                          navigateTo(context, Login());
                        })),
            body: cubit.TitleList[cubit.IndexOfMedical].isSelected
                ? body[cubit.IndexOfMedical]
                : SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                  color: MyColors.cPrimary,
                                  width: width,
                                  height: height * 50 / 100),
                              Text(
                                'my profile'.toUpperCase(),
                                style: TextStyle(
                                    fontSize: 50,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 10 / 100,
                        ),
                        Form(
                          key: formKey,
                          child: Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: width * 5 / 100,
                            ),
                            child: Wrap(
                              spacing: width * 3 / 100,
                              runSpacing: height * 10 / 100,
                              alignment: WrapAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      width: 350,
                                      height: 350,
                                      decoration: BoxDecoration(
                                        color: Color(0xffE7F1F1),
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(70),
                                          bottomLeft: Radius.circular(70),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image(
                                            image: AssetImage(
                                                'assets/image/main/my_profile.png'),
                                            width: 120,
                                            height: 120,
                                          ),
                                          SizedBox(
                                            height: height * 5 / 100,
                                          ),
                                          Text(
                                            'Patient Name',
                                            style: TextStyle(
                                              fontSize: 25,
                                              color: MyColors.cPrimary,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: height * 5 / 100,
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        aroundBorderButtonClicked(
                                          height: 50,
                                          text: "CANCEL",
                                          Pressed: () {},
                                        ),
                                        SizedBox(
                                          width: width * 3 / 100,
                                        ),
                                        buttonClicked(
                                          height: 50,
                                          text: 'Save',
                                          Pressed: () {
                                            if (formKey.currentState!
                                                .validate()) {
                                              print(fNameController.text);
                                              print(lNameController.text);
                                              print(dateOfBirthController.text);
                                              print(genderController.text);
                                              print(bloodtypeController.text);
                                              print(phoneController.text);
                                              print(emailController.text);
                                              print(materialStatusController
                                                  .text);
                                              print(numOfChildController.text);
                                              print(educationController.text);
                                            }
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 600,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: width * 3 / 100,
                                        vertical: height * 15 / 100,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Color(0xffE7F1F1),
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(70),
                                          bottomLeft: Radius.circular(70),
                                        ),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Wrap(
                                            spacing: width <= 1400
                                                ? width * 1 / 100
                                                : 10,
                                            runSpacing: height * 1 / 100,
                                            children: [
                                              tFormfield(
                                                margin: width * 2 / 100,
                                                text: 'First Name',
                                                width: 250,
                                                controller: fNameController,
                                              ),
                                              tFormfield(
                                                margin: width * 2 / 100,
                                                text: 'Last Name',
                                                width: 250,
                                                controller: lNameController,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: height * 5 / 100,
                                          ),
                                          Wrap(
                                            runSpacing: height * 5 / 100,
                                            children: List.generate(
                                              label.length,
                                              (index) => tFormfield(
                                                margin: width * 2 / 100,
                                                text: label[index],
                                                controller: controller[index],
                                              ),
                                            ),
                                          ),
                                        ],
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
                  ),
          ),
        );
      },
    );
  }
}
