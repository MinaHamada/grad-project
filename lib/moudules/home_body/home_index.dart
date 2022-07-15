import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hmis_web/moudules/home_body/medical_history_index.dart';
import 'package:hmis_web/moudules/patient_body/appointments%20copy/appointments_screen.dart';
import 'package:hmis_web/moudules/patient_body/appointments/appointments_screen.dart';
import 'package:hmis_web/shared/components/components.dart';

import 'package:hmis_web/shared/cubit/cubit.dart';
import 'package:hmis_web/shared/cubit/states.dart';

import '../../shared/styels/colors.dart';
import 'departments_index.dart';

class HomeIndex extends StatelessWidget {
  const HomeIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var fName = TextEditingController();
    var lName = TextEditingController();
    var phone = TextEditingController();
    var email = TextEditingController();
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var formKey = GlobalKey<FormState>();
        List image = [
          'assets/image/dep_image/Ophthalmology.png',
          'assets/image/dep_image/Dental.png',
          'assets/image/dep_image/Surgery.png',
          'assets/image/dep_image/Rheumatology.png',
          'assets/image/dep_image/Nephrology.png',
          'assets/image/dep_image/Blood_diseases.png',
          'assets/image/dep_image/Diabetes.png',
          'assets/image/dep_image/Dermatology.png',
          'assets/image/dep_image/Physiotherapy.png',
          'assets/image/dep_image/Psychiatry.png',
        ];
        List label = [
          'Ophthalmology',
          'Dental',
          'Surgery',
          'Rheumatology',
          'Nephrology',
          'Blood diseases',
          'Diabetes',
          'Dermatology',
          'Physiotherapy',
          'Psychiatry',
        ];
        return Container(
          width: width,
          child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Info
                  Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.center,
                    children: [
                      Container(
                        height: height * 90 / 100,
                        // width: 683,
                        width: width <= 1300 ? 683 : width * 50 / 100,
                        padding: EdgeInsets.symmetric(
                          vertical: height * 12 / 100,
                          horizontal:
                              width <= 1400 ? width * 6 / 100 : width * 2 / 100,
                        ),
                        color: MyColors.cPrimary,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: width * 3 / 100,
                                  height: 2,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'global health standards at your doorstep',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            // MEDICAL SERVICES YOU CAN TRUST
                            Row(
                              children: [
                                Text(
                                  'MEDICAL',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 50.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'SERVICES YOU',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 50.sp,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'CAN TRUST',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 50.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            Text(
                              'Our state of the art facility focuses on patient care and comfort with ongoing investment in latest medical technologies and processes.',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 20.sp,
                                color: Colors.white.withOpacity(.5),
                              ),
                            ),
                            Spacer(flex: 1),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  height: width <= 1400 ? 55 : 70,
                                  decoration: BoxDecoration(
                                    color: Color(0xff1773FA),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      navigateTo(context, AppointmentNav());
                                    },
                                    child: Text(
                                      'appointment'.toUpperCase(),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 30),
                                Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Color(0xffffffff)
                                          .withOpacity(26 / 100),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.phone),
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Image(
                          image: AssetImage('assets/image/main/doctor.jpg'),
                          fit: BoxFit.cover,
                          height: height * 90 / 100,
                          width: width <= 1300 ? 683 : width * 50 / 100,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 6 / 100,
                  ),
                  //view
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Wrap(
                      direction: Axis.horizontal,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: width <= 1300 ? 683 : width * 50 / 100,
                              child: richText(
                                firstText: 'All your medical record is here.\n',
                                secondText:
                                    'Your test results, summary\n of previous appointments\n and medical reports.',
                                firstWeight: FontWeight.bold,
                                secodWeight: FontWeight.w600,
                                fontSize: width <= 1400 ? 33 : 33.sp,
                                textColor: MyColors.cPrimary,
                                sectextColor: MyColors.cPrimary,
                              ),
                            ),
                            SizedBox(
                              height: height * 6 / 100,
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                bottom: height * 10 / 100,
                                left: width * 25 / 100,
                              ),
                              child: buttonClicked(
                                text: 'VIEW',
                                height: 55,
                                width: 200,
                                Pressed: () {
                                  navigateTo(context, MedicalHistoryIndex());
                                },
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: width <= 1300 ? 683 : width * 45 / 100,
                          child: Image(
                            image:
                                AssetImage('assets/image/main/doc_nurse.png'),
                            // width: 683,
                            height: height * 50 / 100,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: height * 9 / 100,
                  ),
                  //Department
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: height * 5 / 100,
                    ),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffA1C9CA).withOpacity(25 / 100),
                          blurRadius: 30,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: width * 2 / 100,
                          ),
                          child: Row(
                            children: [
                              TextPage(
                                text: 'OUR DEPARTMENTS',
                                fontSize: 25.sp,
                                color: MyColors.cPrimary,
                                weight: FontWeight.w600,
                              ),
                              Spacer(),
                              GestureDetector(
                                onTap: () {
                                  navigateTo(context, DepartmentsIndex());
                                },
                                child: Row(
                                  children: [
                                    TextPage(
                                      text: 'show more',
                                      fontSize: 25.sp,
                                      color: MyColors.cPrimary,
                                      weight: FontWeight.w500,
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        navigateTo(context, DepartmentsIndex());
                                      },
                                      icon: Icon(IconlyLight.arrowRight),
                                      color: MyColors.cPrimary,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 5 / 100,
                        ),
                        Container(
                          width: width <= 1400 ? width : 1300,
                          margin: EdgeInsets.symmetric(
                            horizontal: width <= 1400 ? width * 8 / 100 : 80,
                          ),
                          child: Wrap(
                              alignment: WrapAlignment.center,
                              spacing: width * 2 / 100,
                              runSpacing: 40,
                              children: List.generate(
                                image.length,
                                (index) => iconDep(
                                  context: context,
                                  image: image[index],
                                  text: label[index],
                                  // widthImg: width * 15 / 100,
                                  widthImg: 100,
                                  // heightImg: height * 15 / 100,
                                  heightImg: 100,
                                  spacing: height * 3 / 100,
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),

                  //Appointment
                  Form(
                    key: formKey,
                    child: Container(
                      width: width,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: width * 5 / 100,
                            ),
                            child: Wrap(
                              direction: Axis.horizontal,
                              children: [
                                TextPage(
                                  text: 'APPOINTMENT',
                                  fontSize: 25.sp,
                                  color: MyColors.cPrimary,
                                  weight: FontWeight.w600,
                                ),
                                SizedBox(
                                  height: height * 10 / 100,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Spacer(),
                                    appointList(num: '1', label: 'Details'),
                                    Container(
                                      height: height * .3 / 100,
                                      width: width * 3 / 100,
                                      color: Color(0xffDADADA),
                                      margin: EdgeInsets.only(
                                        bottom: height * 3 / 100,
                                      ),
                                    ),
                                    appointList(num: '2', label: 'Time'),
                                    Container(
                                      height: height * .3 / 100,
                                      width: width * 3 / 100,
                                      color: Color(0xffDADADA),
                                      margin: EdgeInsets.only(
                                        bottom: height * 3 / 100,
                                      ),
                                    ),
                                    //Confirm
                                    appointList(num: '3', label: 'Confirm'),
                                    Spacer(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: height * 5 / 100,
                          ),
                          Container(
                            width: width <= 1400 ? width : 1300,
                            margin: EdgeInsets.symmetric(
                              horizontal: width * 10 / 100,
                            ),
                            child: Wrap(
                              alignment: WrapAlignment.center,
                              spacing: width < 1300
                                  ? width * 9 / 100
                                  : width * 25 / 100,
                              runSpacing: height * 7 / 100,
                              children: [
                                formfield(
                                  text: 'First Name',
                                  controller: fName,
                                  margin: width * 2 / 100,
                                ),
                                formfield(
                                  text: 'Last Name',
                                  controller: lName,
                                  margin: width * 2 / 100,
                                ),
                                formfield(
                                  text: 'phone Number',
                                  controller: phone,
                                  margin: width * 2 / 100,
                                ),
                                formfield(
                                  text: 'Email',
                                  controller: email,
                                  margin: width * 2 / 100,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: height * 10 / 100),
                          Row(
                            children: [
                              Spacer(),
                              buttonClicked(
                                text: 'Next',
                                height: 55,
                                width: 200,
                                Pressed: () {
                                  if (formKey.currentState!.validate()) {
                                    print(fName.text);
                                    print(lName.text);
                                    print(phone.text);
                                    print(email.text);
                                  }
                                },
                              ),
                              SizedBox(
                                width: width * 15 / 100,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 9 / 100,
                  ),
                  //footer
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
