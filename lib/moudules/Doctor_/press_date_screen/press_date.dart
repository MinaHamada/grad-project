import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hmis_web/shared/cubit/cubit.dart';
import 'package:hmis_web/shared/cubit/states.dart';
import '../../../shared/components/components.dart';
import '../../../shared/styels/colors.dart';

class Press_Date extends StatelessWidget {
  const Press_Date({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var formKey = GlobalKey<FormState>();
    var fNameController = TextEditingController();
    var lNameController = TextEditingController();
    var dateOfBirthController = TextEditingController();
    var genderController = TextEditingController();
    var phoneController = TextEditingController();
    var emailController = TextEditingController();
    var OccupationController = TextEditingController();
    var AddressController = TextEditingController();

    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        List label = [
          'Date of birth',
          'Gender',
          'Phone Number',
          'Email',
          'Occupation',
          'Address',
        ];
        List controller = [
          dateOfBirthController,
          genderController,
          phoneController,
          emailController,
          OccupationController,
          AddressController,
        ];
        return Container(
          margin: EdgeInsets.symmetric(vertical: height * 8 / 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Wrap(
                spacing: width * 2 / 100,
                runSpacing: height * 2 / 100,
                children: [
                  tFormfield(
                    margin: width * 2 / 100,
                    text: 'Patient No.',
                    width: 250,
                    controller: fNameController,
                  ),
                  tFormfield(
                    margin: width * 2 / 100,
                    text: 'First Name',
                    width: 250,
                    controller: fNameController,
                  ),
                  tFormfield(
                    margin: width * 2 / 100,
                    text: 'Last Name',
                    width: 250,
                    controller: lNameController,
                  ),
                ],
              ),
              SizedBox(
                height: height * 5 / 100,
              ),
              Wrap(
                spacing: width * 10 / 100,
                runSpacing: height * 5 / 100,
                children: List.generate(
                  label.length,
                  (index) => tFormfield(
                    margin: width * 2 / 100,
                    text: label[index],
                    controller: controller[index],
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
