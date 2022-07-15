import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:hmis_web/shared/styels/colors.dart';
import '../../../shared/components/components.dart';
import '../../../shared/cubit/cubit.dart';
import '../../../shared/cubit/states.dart';

class Patient_Dash_profile extends StatelessWidget {
  const Patient_Dash_profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    AppCubit cubit = AppCubit.get(context);

    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          padding: EdgeInsetsDirectional.only(start: 50, top: 70, bottom: 70),
          child: Wrap(
            spacing: 50,
            runSpacing: 30,
            alignment: WrapAlignment.spaceBetween,
            children: [
              Container(
                width: width < 1200 ? width : width * 50 / 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Text(
                            "Patient Details",
                            style: TextStyle(
                              color: MyColors.cPrimary,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Spacer(),
                          Container(
                            color: Color(0xffF1F1FF),
                            padding: EdgeInsets.all(5),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.add,
                                  color: MyColors.cPrimary,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Add Reacord",
                                  style: TextStyle(
                                    color: MyColors.cPrimary,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: width,
                      child: Wrap(
                        alignment: width <= 1400
                            ? WrapAlignment.center
                            : WrapAlignment.spaceBetween,
                        spacing: width <= 1400 ? width * 4.4 / 100 : 0,
                        runSpacing: 20,
                        children: [
                          Card_Patienpro(
                            color: Color(0xffF36643),
                            image: "assets/image/dashbord/blood_pressure.png",
                            label: "blood pressure",
                            rate: "110/70",
                          ),
                          Card_Patienpro(
                            color: Color(0xff4524F8),
                            image: "assets/image/dashbord/heart_rate.png",
                            label: "Heart rate",
                            rate: "85 Bmp",
                          ),
                          Card_Patienpro(
                            color: Color(0xff3575FF),
                            image: "assets/image/dashbord/appointment3.png",
                            label: "Appointments",
                            rate: "5",
                          ),
                          Card_Patienpro(
                            color: Color(0xff24D6A5),
                            image: "assets/image/dashbord/bill.png",
                            label: "patient bill",
                            rate: "2000 EGP",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: width,
                      child: Wrap(
                        alignment: width <= 1400
                            ? WrapAlignment.center
                            : WrapAlignment.spaceBetween,
                        spacing: width <= 1400 ? width * 5 / 100 : 0,
                        runSpacing: 20,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            width: 300,
                            height: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: MyColors.cPrimary,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Illness Diagnosis",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    diagnosis_text(
                                        text1: "Name", text2: "Diabetes"),
                                    Spacer(),
                                    diagnosis_text(
                                        text1: "Diagnosis date",
                                        text2: "12/3/2022"),
                                  ],
                                ),
                                diagnosis_text(
                                    text1: "Treatment", text2: "Insulin Pump"),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Treatment",
                                      style: TextStyle(
                                        color: Color(0xff23B59C),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    diagnosis_item(
                                        image:
                                            "assets/image/dashbord/medicine.png",
                                        text: "Glucotrol x3"),
                                    SizedBox(height: 10),
                                    diagnosis_item(
                                        image:
                                            "assets/image/dashbord/medicine.png",
                                        text: "Glimepiride x2"),
                                    SizedBox(height: 10),
                                    diagnosis_item(
                                        image:
                                            "assets/image/dashbord/medicine.png",
                                        text: "Glucophage x2.5"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            width: 300,
                            height: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffF1F1FF),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Documents",
                                  style: TextStyle(
                                    color: MyColors.cPrimary,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Documents_item(
                                    image: "assets/image/dashbord/radiolgy.png",
                                    text: "Radiology Result"),
                                Documents_item(
                                    image:
                                        "assets/image/dashbord/Lab_Result.png",
                                    text: "Lab Result "),
                                Documents_item(
                                    image:
                                        "assets/image/dashbord/Prescription.png",
                                    text: "Prescription"),
                                Documents_item(
                                    image:
                                        "assets/image/dashbord/Lab_Result.png",
                                    text: "Lab Result "),
                                Documents_item(
                                    image: "assets/image/dashbord/radiolgy.png",
                                    text: "Radiology Result"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: width < 1200 ? width : width * 30 / 100,
                child: Container(
                  width: 400,
                  height: 600,
                  decoration: BoxDecoration(
                    color: Color(0xffF1F1FF),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                        image:
                            AssetImage("assets/image/dashbord/my_profile3.png"),
                      ),
                      Text(
                        "Patient Name",
                        style: TextStyle(
                          color: MyColors.cPrimary,
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "General Information",
                                style: TextStyle(
                                  color: MyColors.cPrimary,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          patient_information(
                              text1: "Status", text2: "Hospital"),
                          SizedBox(height: 5),
                          patient_information(text1: "Age", text2: "25 years"),
                          SizedBox(height: 5),
                          patient_information(text1: "Gender", text2: "Female"),
                          SizedBox(height: 5),
                          patient_information(text1: "Blood Type", text2: "A+"),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Contact Information",
                                style: TextStyle(
                                  color: MyColors.cPrimary,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          patient_information(
                              text1: "Phone", text2: "+20 1023456769"),
                          SizedBox(height: 5),
                          patient_information(
                              text1: "Email", text2: "Example@gmail.com"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: MyColors.cPrimary,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.phone),
                                color: Colors.white,
                              )),
                          SizedBox(width: 30),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            height: width <= 1400 ? 55 : 70,
                            decoration: BoxDecoration(
                              color: Color(0xff1773FA),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Edit patient'.toUpperCase(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
