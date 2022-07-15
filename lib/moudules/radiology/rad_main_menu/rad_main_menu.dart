import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hmis_web/moudules/lab/medical_request/request.dart';
import 'package:hmis_web/moudules/radiology/x_data/x_data.dart';
import 'package:hmis_web/shared/cubit/cubit.dart';
import 'package:hmis_web/shared/cubit/states.dart';
import 'package:hmis_web/shared/styels/colors.dart';
import '../../../shared/components/components.dart';
import '../request_x/request_x.dart';
import '../x_request/x_request.dart';

class Rad_Main extends StatelessWidget {
  const Rad_Main({Key? key}) : super(key: key);

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
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                            Wrap(
                              direction: Axis.vertical,
                              children: [
                                menuButton(
                                  buttonText: "X-Rays REQUESTS",
                                  onpressed: () {
                                    navigateTo(context, X_Request_screen());
                                  },
                                ),
                                SizedBox(height: height * 5 / 100),
                                menuButton(
                                  buttonText: "X-Rays Data",
                                  onpressed: () {
                                    navigateTo(context, X_Data());
                                  },
                                ),
                                SizedBox(height: height * 5 / 100),
                                menuButton(
                                  buttonText: "REQUESTS X-Rays",
                                  onpressed: () {
                                    navigateTo(context, Request_X());
                                  },
                                ),
                              ],
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
