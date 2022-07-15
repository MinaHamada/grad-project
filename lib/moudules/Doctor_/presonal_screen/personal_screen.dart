import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hmis_web/shared/cubit/cubit.dart';
import 'package:hmis_web/shared/cubit/states.dart';
import '../../../shared/components/components.dart';
import '../../../shared/styels/colors.dart';
import '../main_menu_screen/main_menu.dart';
import '../search_screen/search.dart';

class personal_Date_screen extends StatelessWidget {
  const personal_Date_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var formKey = GlobalKey<FormState>();
    var fNameController = TextEditingController();
    var lNameController = TextEditingController();
    var dateOfBirthController = TextEditingController();
    var genderController = TextEditingController();
    var phoneController = TextEditingController();
    var emailController = TextEditingController();
    var OccupationController = TextEditingController();
    var AddressController = TextEditingController();

    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        List label = [
          'Date of birth',
          'Gender',
          'Phone Number',
          'Email',
          'Occupation',
          'Address',
        ];
        List controller = [
          dateOfBirthController,
          genderController,
          phoneController,
          emailController,
          OccupationController,
          AddressController,
        ];
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
                      Spacer(),
                      IconButton(
                        iconSize: 35,
                        onPressed: () {},
                        icon: Image(
                          image: AssetImage("image/main/delete.png"),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    height: width <= 1400 ? null : height,
                    width: width - 50,
                    color: Color(0xffF1F1FF),
                    child: Column(
                      children: [
                        Container(
                          width: width,
                          padding: EdgeInsets.symmetric(
                              horizontal: width < 1000 ? 10 : width * 3 / 100,
                              vertical: height * 5 / 100),
                          color: Colors.white,
                          child: Wrap(
                            spacing: width * 50 / 100,
                            runSpacing: 20,
                            children: [
                              Container(
                                child: Text(
                                  "Patient Personal Data",
                                  style: TextStyle(
                                    fontSize: 30.sp,
                                    color: MyColors.cPrimary,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(7),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: MyColors.cPrimary,
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: width * .5 / 100),
                                      Text(
                                        'NEW SHEET',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13.sp),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: width * 5 / 100,
                              vertical: height * 15 / 100),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Wrap(
                                spacing: width * 2 / 100,
                                runSpacing: height * 2 / 100,
                                children: [
                                  tFormfield(
                                    margin: width * 2 / 100,
                                    text: 'Patient No.',
                                    width: 250,
                                    controller: fNameController,
                                  ),
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
                                spacing: width * 10 / 100,
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
// 