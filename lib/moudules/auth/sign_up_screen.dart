import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hmis_web/moudules/auth/sign_in_screen.dart';
import 'package:hmis_web/shared/cubit/cubit.dart';
import 'package:hmis_web/shared/cubit/states.dart';
import 'package:hmis_web/shared/styels/colors.dart';

import '../../shared/components/components.dart';

class SignUP extends StatelessWidget {
  const SignUP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var formKey = GlobalKey<FormState>();
    var lnameController = TextEditingController();
    var fnameController = TextEditingController();
    var phoneController = TextEditingController();
    var emailController = TextEditingController();
    var passwardController = TextEditingController();
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
                Form(
                  key: formKey,
                  child: Center(
                    child: Container(
                      width: width < 1000 ? width : width * 90 / 100,
                      height: width < 1000 ? height : height * 90 / 100,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(70),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Text(
                                  'Create an Account',
                                  style: TextStyle(
                                    fontFamily: "Montserrat",
                                    color: MyColors.cPrimary,
                                    fontSize: 30.sp,
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
                                          alignment: WrapAlignment.center,
                                          spacing: width <= 1400
                                              ? width * 10 / 100
                                              : width * 20 / 100,
                                          runSpacing: height * 2 / 100,
                                          children: [
                                            authFormfield(
                                              text: 'First Name',
                                              textColor: MyColors.cPrimary,
                                              controller: fnameController,
                                              margin: width * 2 / 100,
                                            ),
                                            authFormfield(
                                              text: 'last Name',
                                              textColor: MyColors.cPrimary,
                                              controller: lnameController,
                                              margin: width * 2 / 100,
                                            ),
                                            authFormfield(
                                              text: 'Email',
                                              textColor: MyColors.cPrimary,
                                              controller: emailController,
                                              margin: width * 2 / 100,
                                            ),
                                            authFormfield(
                                              text: 'passward',
                                              textColor: MyColors.cPrimary,
                                              controller: passwardController,
                                              margin: width * 2 / 100,
                                            ),
                                            authFormfield(
                                              text: 'phone number',
                                              textColor: MyColors.cPrimary,
                                              controller: phoneController,
                                              margin: width * 2 / 100,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Center(
                                child: Wrap(
                                  alignment: WrapAlignment.center,
                                  direction: Axis.horizontal,
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  runSpacing: 10,
                                  children: [
                                    Container(
                                      height: width < 1000 ? 40 : 55,
                                      width: width < 1000 ? 100 : 200,
                                      decoration: BoxDecoration(
                                        color: MyColors.cPrimary,
                                        borderRadius:
                                            BorderRadius.circular(97.r),
                                      ),
                                      child: TextButton(
                                        onPressed: () {
                                          if (formKey.currentState!
                                              .validate()) {
                                            print(fnameController.text);
                                            print(lnameController.text);
                                            print(phoneController.text);
                                            print(emailController.text);
                                            print(passwardController.text);
                                          }
                                          ;
                                        },
                                        child: TextPage(
                                          text: 'Sign up',
                                          fontSize: 17,
                                          weight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * 1 / 100,
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'Don’t have an account?',
                                          style: TextStyle(
                                            color: Color(0xff5E5E5E),
                                            fontSize: 17.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          width: width * 1 / 100,
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            navigateTo(context, Login());
                                          },
                                          child: Text(
                                            'Log In',
                                            style: TextStyle(
                                              color: MyColors.cPrimary,
                                              fontSize: 17.sp,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
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
        );
      },
    );
  }
}
