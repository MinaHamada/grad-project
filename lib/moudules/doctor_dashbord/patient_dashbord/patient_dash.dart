import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hmis_web/shared/styels/colors.dart';
import '../../../shared/components/components.dart';
import '../../../shared/cubit/cubit.dart';
import '../../../shared/cubit/states.dart';

class Patient_Dash extends StatelessWidget {
  const Patient_Dash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    AppCubit cubit = AppCubit.get(context);

    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 70, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "My Patients",
                    style: TextStyle(
                      color: MyColors.cPrimary,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(),
                  Container(
                    color: Color(0xffF1F1FF),
                    padding: EdgeInsets.all(2),
                    child: IconButton(
                      onPressed: () {
                        cubit.increaselengthpatient();
                      },
                      icon: Icon(
                        Icons.add,
                        color: MyColors.cPrimary,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: width * 70 / 100,
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: width * 3.5 / 100,
                  runSpacing: 20,
                  children: List.generate(
                    cubit.cardnum,
                    (index) => patient(),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Wrap(
                spacing: 50,
                alignment: WrapAlignment.center,
                runSpacing: 20,
                children: [
                  Image(
                    image: AssetImage("assets/image/dashbord/Age.png"),
                    fit: BoxFit.cover,
                    width: 600,
                  ),
                  Wrap(
                    spacing: 30,
                    runSpacing: 10,
                    direction: Axis.vertical,
                    alignment: WrapAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Color(0xffF1F1FF),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 280,
                        height: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Total Patients",
                              style: TextStyle(
                                  color: MyColors.cPrimary,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                            Row(
                              children: [
                                Text(
                                  "1000 Pateint",
                                  style: TextStyle(
                                      color: MyColors.cPrimary,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300),
                                ),
                                Spacer(),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "+ 0.7%",
                                      style: TextStyle(
                                          color: Color(0xff23B59C),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    Icon(
                                      Icons.arrow_upward_rounded,
                                      color: Color(0xff23B59C),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(height: 30),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Color(0xffF1F1FF),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 280,
                        height: 150,
                        child: Row(
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.centerStart,
                              children: [
                                Image(
                                  image: AssetImage(
                                      "assets/image/dashbord/pie_chart.png"),
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 15),
                                  child: CircleAvatar(
                                    backgroundColor: Color(0xffF1F1FF),
                                    radius: 35,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Color(0xff1773FA),
                                      radius: 10,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "New Petients",
                                      style: TextStyle(
                                          color: Color(0xff1773FA),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: MyColors.cPrimary,
                                      radius: 10,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "Old Patients",
                                      style: TextStyle(
                                          color: MyColors.cPrimary,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
