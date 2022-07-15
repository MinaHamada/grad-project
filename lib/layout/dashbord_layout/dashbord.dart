import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:hmis_web/layout/home_layout/home_layout.dart';
import 'package:hmis_web/moudules/doctor_dashbord/calender/calender.dart';
import 'package:hmis_web/moudules/doctor_dashbord/doc_dash_home/dash_home.dart';
import 'package:hmis_web/moudules/doctor_dashbord/finance/finanec.dart';
import 'package:hmis_web/moudules/doctor_dashbord/patient_dashbord/patient_dash.dart';
import 'package:hmis_web/shared/components/components.dart';

import '../../moudules/doctor_dashbord/patient_profile/patient_dash_profile.dart';
import '../../shared/cubit/cubit.dart';
import '../../shared/cubit/states.dart';
import '../../shared/styels/colors.dart';

class Dashbord extends StatelessWidget {
  const Dashbord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        double width = MediaQuery.of(context).size.width;
        double height = MediaQuery.of(context).size.height;
        AppCubit cubit = AppCubit.get(context);
        List body = [
          const Dash_Home(),
          const Calender(),
          const Patient_Dash_profile(),
          const Finanece(),
        ];
        return Scaffold(
          body: Container(
            width: width,
            height: height,
            color: Color(0xffF1F1FF),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsetsDirectional.only(
                      top: 10,
                      bottom: 10,
                      start: width < 600 ? 0 : width * 2 / 100,
                      end: width * 2 / 100),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Wrap(
                        alignment: WrapAlignment.center,
                        runSpacing: 20,
                        spacing: width < 900 ? 0 : width * 8 / 100,
                        children: [
                          GestureDetector(
                            onTap: () {
                              navigateTo(context, HomeLayout());
                            },
                            child: Container(
                              child: Image.asset(
                                'assets/image/logo/bar.png',
                                width: width < 900 ? 0 : width * 12 / 100,
                              ),
                            ),
                          ),
                          Container(
                            width: 360,
                            height: 50,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                suffixIcon: Icon(
                                  IconlyLight.search,
                                  size: 20,
                                ),
                                hintText: "Search ",
                                hintStyle: TextStyle(
                                  color: Colors.black.withOpacity(50 / 100),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Stack(
                        alignment: AlignmentDirectional.topEnd,
                        children: [
                          Icon(
                            CupertinoIcons.bell_fill,
                            size: 30,
                            color: Color(0xff0F357A).withOpacity(75 / 100),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(top: 3, end: 3),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 6,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(top: 4, end: 3),
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 5,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: width * 1 / 100),
                      Container(
                        child: Image.asset(
                            'assets/image/dashbord/myprofile2.png',
                            height: 60),
                      ),
                    ],
                  ),
                ), //header

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 60,
                      padding: EdgeInsets.only(top: 50),
                      child: Column(
                        children: List.generate(
                          cubit.iconList.length,
                          (index) => Column(
                            children: [
                              dashIconBar(
                                dashicon: cubit.iconList[index].iconbutton,
                                select: cubit.iconList[index].isSelected,
                                onPressed: () {
                                  cubit.showIndexOfDashbordIcon(index);
                                },
                              ),
                              SizedBox(height: 30),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height:
                          width <= 1400 ? height * 87 / 100 : height * 90 / 100,
                      width: width - 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Container(
                          height: null,
                          child: body[cubit.indexofIcon],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class dashIconBar extends StatelessWidget {
  final VoidCallback? onPressed;
  final IconData? dashicon;
  final bool? select;

  const dashIconBar(
      {Key? key, this.onPressed, this.dashicon, this.select = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        dashicon,
        size: 30,
        color: select == true
            ? MyColors.cPrimary
            : Color(0xff0F357A).withOpacity(50 / 100),
      ),
    );
  }
}

class DashIconButtonBar {
  final IconData? iconbutton;
  bool isSelected;

  DashIconButtonBar(this.iconbutton, this.isSelected);
}
