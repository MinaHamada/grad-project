import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hmis_web/moudules/patient_body/medical_procedure/medication_procedure.dart';
import 'package:hmis_web/shared/components/components.dart';
import 'package:hmis_web/shared/cubit/cubit.dart';
import 'package:hmis_web/shared/cubit/states.dart';

import '../appointments/appointments_screen.dart';
import '../lab_result/lab_result.dart';
import '../medical_condition/medical_condition.dart';
import '../medication_details/medication_details.dart';
import '../prescription/perscription.dart';
import '../rad_result/rad_result.dart';
import '../surgery_details/surgery_details.dart';

class Medical_History extends StatelessWidget {
  const Medical_History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var width = MediaQuery.of(context).size.width;
        var height = MediaQuery.of(context).size.height;
        List image = [
          "image/main/appointment_3.png",
          "image/main/RAD_RESULTS.png",
          "image/main/LAB_RESULTS.png",
          "image/main/Medical_Condition.png",
          "image/main/medical_procedure.png",
          "image/main/SURGERY.png",
          "image/main/Medication.png",
          "image/main/Prescription.png",
        ];
        List text = [
          "APPOINTMENTS",
          "RAD RESULTS",
          "LAB RESULTS",
          "Medical Condition",
          "medical procedure",
          "SURGERY",
          "Medication",
          "Prescription",
        ];
        List navigate = [
          Appointment(),
          Rad_Results(),
          Lab_Results(),
          Medical_Condition(),
          Medication_Procedure(),
          Surgery_Details(),
          Madication_Details(),
          Prescription(),
        ];
        return SizedBox(
          width: width,
          child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  header(
                    widthImage: width,
                    heightImage: height * 50 / 100,
                    image: 'assets/image/main/doctor.jpg',
                    text: 'medical history'.toUpperCase(),
                  ),
                  SizedBox(
                    height: height * 10 / 100,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: .2.sw),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      spacing:
                          width <= 1600 ? width * 4 / 100 : width * 7 / 100,
                      runSpacing: height * 5 / 100,
                      children: List.generate(
                        image.length,
                        (index) => GestureDetector(
                          onTap: () {
                            navigateTo(context, navigate[index]);
                          },
                          child: medicalDep(
                            spacing: height * 1 / 100,
                            image: image[index],
                            text: text[index],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 10 / 100,
                  ),
                  //footter
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
