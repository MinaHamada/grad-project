import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hmis_web/shared/components/components.dart';
import 'package:hmis_web/shared/cubit/cubit.dart';
import 'package:hmis_web/shared/cubit/states.dart';

class DepartmentsIndex extends StatelessWidget {
  const DepartmentsIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        List depImage = [
          'assets/image/dep_image/Ophthalmology.png',
          'assets/image/dep_image/Dental.png',
          'assets/image/dep_image/Surgery.png',
          'assets/image/dep_image/Rheumatology.png',
          'assets/image/dep_image/Nephrology.png',
          'assets/image/dep_image/Blood_diseases.png',
          'assets/image/dep_image/Diabetes.png',
          'assets/image/dep_image/Dermatology.png',
          'assets/image/dep_image/Physiotherapy.png',
          'assets/image/dep_image/Psychiatry.png',
          'assets/image/dep_image/Pediatric_Neonatology.png',
          'assets/image/dep_image/Urology.png',
          'assets/image/dep_image/Obstetrics_Gynecology.png',
          'assets/image/dep_image/Cardiology.png',
          'assets/image/dep_image/Radiology.png',
          'assets/image/dep_image/CardiothoracicSurgery.png',
          'assets/image/dep_image/Chest.png',
          'assets/image/dep_image/Anaesthesia.png',
          'assets/image/dep_image/Gastroneterology.png',
          'assets/image/dep_image/Internal_Medicine.png',
          'assets/image/dep_image/Orthopedic.png',
          'assets/image/dep_image/Neurosurgery.png',
          'assets/image/dep_image/Vascular_Surgery.png',
          'assets/image/dep_image/Ear_Nose_Throat.png',
        ];
        List depText = [
          'Ophthalmology',
          'Dental',
          'Surgery',
          'Rheumatology',
          'Nephrology',
          'Blood diseases',
          'Diabetes',
          'Dermatology',
          'Physiotherapy',
          'Psychiatry',
          'Pediatric and Neonatology',
          'Urology',
          'Obstetrics and Gynecology',
          "Cardiology",
          'Rardiology',
          'Cardiothoracic Surgery',
          'Chest',
          'Anaesthesia',
          'Gastroneterology',
          'Internal Medicine',
          'Orthopedic',
          'Neurosurgery',
          'Vascular Surgery',
          'Ear,Nose and Throat',
        ];
        var width = MediaQuery.of(context).size.width;
        var height = MediaQuery.of(context).size.height;
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // header
                  header(
                    widthImage: width,
                    heightImage: height * 50 / 100,
                    image: 'assets/image/main/doctor.jpg',
                    text: 'DEPARTMENTS',
                  ),
                  SizedBox(
                    height: height * 10 / 100,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: width * 8 / 100,
                      vertical: height * 5 / 100,
                    ),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      spacing:
                          width <= 1500 ? width * 3 / 100 : width * 9 / 100,
                      runSpacing: height * 5 / 100,
                      children: List.generate(
                        depImage.length,
                        (index) => iconDep(
                            context: context,
                            width: 220,
                            widthImg: 100,
                            heightImg: 100,
                            spacing: height * 3 / 100,
                            image: depImage[index],
                            text: depText[index]),
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
