import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hmis_web/moudules/auth/sign_up_screen.dart';
import 'package:hmis_web/shared/cubit/cubit.dart';
import 'package:hmis_web/shared/cubit/states.dart';
import 'package:hmis_web/shared/styels/colors.dart';

import '../../shared/components/components.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var formKey = GlobalKey<FormState>();
    var idController = TextEditingController();
    var passwordController = TextEditingController();
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
                      width: width * 90 / 100,
                      height: height * 90 / 100,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(70),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Text(
                                  'Welcome Back',
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
                                          spacing: width * 5 / 100,
                                          runSpacing: width * 5 / 100,
                                          children: [
                                            authFormfield(
                                              text: 'Enter ID',
                                              textColor: MyColors.cPrimary,
                                              textSize: 13,
                                              controller: idController,
                                              margin: width * 2 / 100,
                                            ),
                                            authFormfield(
                                              text: 'Password',
                                              textColor: MyColors.cPrimary,
                                              textSize: 13,
                                              controller: passwordController,
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
                                  direction: Axis.horizontal,
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  runSpacing: height * 2 / 100,
                                  spacing: width * 1 / 100,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                        left: width * 11 / 100,
                                      ),
                                      child: buttonClicked(
                                        text: 'log in',
                                        height: 55,
                                        width: 200,
                                        Pressed: () {
                                          if (formKey.currentState!
                                              .validate()) {
                                            print(idController.text);
                                            print(passwordController.text);
                                          }
                                        },
                                      ),
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
                                        TextButton(
                                          onPressed: () {
                                            navigateTo(context, SignUP());
                                          },
                                          child: Text(
                                            'SIGN UP',
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
