import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:hmis_web/shared/styels/colors.dart';
import '../../../shared/components/components.dart';
import '../../../shared/cubit/cubit.dart';
import '../../../shared/cubit/states.dart';

class Finanece extends StatelessWidget {
  const Finanece({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    AppCubit cubit = AppCubit.get(context);
    String dropdownValue = 'Merch';

    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          padding:
              EdgeInsets.symmetric(horizontal: width * 5 / 100, vertical: 50),
          child: Wrap(
            spacing: 50,
            runSpacing: 50,
            alignment: WrapAlignment.center,
            children: [
              Container(
                // width: width < 1200 ? width : width * 50 / 100,
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: width,
                      child: Wrap(
                        alignment: width <= 1000
                            ? WrapAlignment.center
                            : WrapAlignment.spaceBetween,
                        runSpacing: 50,
                        spacing: 50,
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
                                  "Total Appointments",
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
                                  "On Going Appointments",
                                  style: TextStyle(
                                      color: MyColors.cPrimary,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "50 Appointment",
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
                                  "Completed Appointments",
                                  style: TextStyle(
                                      color: MyColors.cPrimary,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "50 Appointment",
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
                    ),
                    SizedBox(height: 50),
                    Container(
                      width: width,
                      child: Wrap(
                        runSpacing: 50,
                        alignment: width <= 1000
                            ? WrapAlignment.center
                            : WrapAlignment.spaceBetween,
                        spacing: 20,
                        children: [
                          Container(
                            width: width < 1200 ? width : width * 50 / 100,
                            child: Wrap(
                              runSpacing: 10,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Bills",
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
                                                  fontSize:
                                                      width < 800 ? 10 : 12),
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
                                                  fontSize:
                                                      width < 800 ? 10 : 12),
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
                                                  fontSize:
                                                      width < 800 ? 10 : 12),
                                            ),
                                          ),
                                          Spacer(),
                                          Container(
                                            width: width < 800 ? 50 : 100,
                                            child: Text(
                                              "Bill",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize:
                                                      width < 800 ? 10 : 12),
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
                                    Container(
                                        width: width,
                                        height: 1,
                                        color: Colors.grey),
                                    Column(
                                      children: [
                                        List_appoint(
                                          width: width,
                                          one: "#2458",
                                          two: "Darrell Williamson",
                                          three: "03/03/2022",
                                          four: "2000 EGP",
                                          five: "On Going",
                                          color: Color(0xffFB8832),
                                        ),
                                        List_appoint(
                                          width: width,
                                          one: "#3530",
                                          two: "Dustin Wilson",
                                          three: "04/03/2022 ",
                                          four: "3500 EGP",
                                          five: "Completed",
                                          color: Color(0xff23B59C),
                                        ),
                                        List_appoint(
                                          width: width,
                                          one: "#4540",
                                          two: "Jerome Simmmons",
                                          three: "05/03/2022",
                                          four: "1000 EGP",
                                          five: "Pending",
                                          color: Color(0xffFB8832),
                                        ),
                                        List_appoint(
                                          width: width,
                                          one: "#9498",
                                          two: "Norma Russell",
                                          three: "06/03/2022 ",
                                          four: "1500 EGP",
                                          five: "On Going",
                                          color: Color(0xff23B59C),
                                        ),
                                        List_appoint(
                                          width: width,
                                          one: "#5004",
                                          two: "Regina Bell",
                                          three: "07/03/2022",
                                          four: "4000 EGP",
                                          five: "On Going",
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
                            width: width < 1200 ? width : width * 30 / 100,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: Color(0xffF1F1FF),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              width: 280,
                              height: 300,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Total Revenue",
                                    style: TextStyle(
                                        color: MyColors.cPrimary,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 10),
                                      Container(
                                        width: 150,
                                        height: 40,
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: DropdownButton<String>(
                                          value: dropdownValue,
                                          underline: SizedBox(),
                                          icon: Icon(
                                              Icons.keyboard_arrow_down_sharp),
                                          isExpanded: true,
                                          elevation: 16,
                                          style: const TextStyle(
                                              color: Colors.grey),
                                          onChanged: (String? newvalue) {
                                            cubit.drop(newvalue!);
                                          },
                                          items: <String>[
                                            'January',
                                            'February',
                                            'Merch',
                                            'April',
                                            'May',
                                            'June',
                                            'July',
                                            'August',
                                            'September',
                                            'October',
                                            'November',
                                            'December'
                                          ].map<DropdownMenuItem<String>>(
                                              (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "7000 EGP",
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Spacer(),
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
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
