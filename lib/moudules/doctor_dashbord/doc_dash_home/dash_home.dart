import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:hmis_web/shared/components/components.dart';
import 'package:hmis_web/shared/styels/colors.dart';

import '../../../shared/cubit/cubit.dart';

class Dash_Home extends StatelessWidget {
  const Dash_Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    AppCubit cubit = AppCubit.get(context);

    return Container(
      padding: EdgeInsetsDirectional.only(
          top: 30, start: 30, bottom: 50, end: width < 1000 ? 10 : 0),
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 40,
        runSpacing: 20,
        children: [
          Container(
            width: width < 1200 ? width : width * 50 / 100,
            child: Wrap(
              alignment: WrapAlignment.center,
              runSpacing: 50,
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    Container(
                      width: width * 90 / 100,
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        color: Color(0xffF1F1FF),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Wrap(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sunday 15 March 2022",
                                style: TextStyle(
                                  color:
                                      Color(0xff0F357A).withOpacity(50 / 100),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(height: 10),
                              richText(
                                firstText: "Good Morning, ",
                                secondText: "Dr. Ahmed",
                                textColor: Colors.black,
                                sectextColor: Color(0xff1773FA),
                                firstWeight: FontWeight.w500,
                                secodWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                              SizedBox(height: 10),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: " You  Have ",
                                      style: TextStyle(
                                          color: Color(0xff525257),
                                          fontWeight: FontWeight.w900,
                                          fontSize: 12),
                                    ),
                                    TextSpan(
                                      text: " 12 Patients ",
                                      style: TextStyle(
                                        color: Color(0xff0F357A)
                                            .withOpacity(50 / 100),
                                        fontWeight: FontWeight.w900,
                                        fontSize: 12,
                                      ),
                                    ),
                                    TextSpan(
                                      text: " Today ",
                                      style: TextStyle(
                                          color: Color(0xff525257),
                                          fontWeight: FontWeight.w900,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Image(
                      image: AssetImage('assets/image/dashbord/doc_dash.png'),
                      fit: BoxFit.cover,
                      width: width <= 900 ? 0 : 250,
                    ),
                  ],
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: width * 8 / 100,
                  runSpacing: 30,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: MyColors.cPrimary,
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
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                          Row(
                            children: [
                              Text(
                                "1000 Pateint",
                                style: TextStyle(
                                    color: Colors.white,
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
                                "20 Pateint",
                                style: TextStyle(
                                    color: MyColors.cPrimary,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                              Spacer(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Wrap(
                  runSpacing: 10,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Appointmets",
                          style: TextStyle(
                            color: MyColors.cPrimary,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffF1F1FF),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Export",
                                style: TextStyle(
                                    color: MyColors.cPrimary,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15),
                              ),
                              SizedBox(width: 10),
                              Icon(
                                IconlyLight.upload,
                                color: MyColors.cPrimary,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          color: Color(0xffF5F5F5),
                          child: Row(
                            children: [
                              Container(
                                width: width < 800 ? 50 : 100,
                                child: Text(
                                  "Patient Number",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: width < 800 ? 10 : 12),
                                ),
                              ),
                              Spacer(),
                              Container(
                                width: width < 800 ? 50 : 100,
                                child: Text(
                                  "Name",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: width < 800 ? 10 : 12),
                                ),
                              ),
                              Spacer(),
                              Container(
                                width: width < 800 ? 50 : 100,
                                child: Text(
                                  "Date",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: width < 800 ? 10 : 12),
                                ),
                              ),
                              Spacer(),
                              Container(
                                width: width < 800 ? 50 : 100,
                                child: Text(
                                  "Time",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: width < 800 ? 10 : 12),
                                ),
                              ),
                              Spacer(),
                              Text(
                                "Status",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                        Container(width: width, height: 1, color: Colors.grey),
                        Column(
                          children: [
                            List_appoint(
                              width: width,
                              one: "#2458",
                              two: "Darrell Williamson",
                              three: "03/03/2022",
                              four: "17:15",
                              five: "Pending",
                              color: Color(0xffFB8832),
                            ),
                            List_appoint(
                              width: width,
                              one: "#3530",
                              two: "Dustin Wilson",
                              three: "04/03/2022 ",
                              four: "14:58",
                              five: "Pending",
                              color: Color(0xff23B59C),
                            ),
                            List_appoint(
                              width: width,
                              one: "#4540",
                              two: "Jerome Simmmons",
                              three: "05/03/2022",
                              four: "09:33",
                              five: "Pending",
                              color: Color(0xffFB8832),
                            ),
                            List_appoint(
                              width: width,
                              one: "#9498",
                              two: "Norma Russell",
                              three: "06/03/2022 ",
                              four: "07:37",
                              five: "Pending",
                              color: Color(0xff23B59C),
                            ),
                            List_appoint(
                              width: width,
                              one: "#5004",
                              two: "Regina Bell",
                              three: "07/03/2022",
                              four: "04:06",
                              five: "Pending",
                              color: Color(0xffEB5757),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: width < 1000 ? width : width * 40 / 100,
            child: Wrap(
              alignment: WrapAlignment.end,
              runSpacing: 50,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Today appointment",
                      style: TextStyle(
                        color: MyColors.cPrimary,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xffF1F1FF),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            bottomLeft: Radius.circular(50)),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Text(
                                    "Patient",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Name/Diagonosis",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  child: Text(
                                    "Time",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          todey_appoint(one: "Health Checkup", two: "On Going"),
                          todey_appoint(one: "Report", two: "10:00"),
                          todey_appoint(one: "Examination", two: "11:00"),
                          todey_appoint(one: "Health Checkup", two: "12:00"),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Reqeusts",
                      style: TextStyle(
                        color: MyColors.cPrimary,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    request_appoint(
                        width: width,
                        one: "Emergency Case",
                        two: "10/04/2022",
                        three: "10:00 AM"),
                    SizedBox(height: 10),
                    request_appoint(
                        width: width,
                        one: "Consultation Case",
                        two: "30/03/2022",
                        three: "1:30 PM AM"),
                    SizedBox(height: 10),
                    request_appoint(
                        width: width,
                        one: "Emergency Case",
                        two: "07/04/2022",
                        three: "9:00 AM AM"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
