import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hmis_web/shared/cubit/cubit.dart';
import 'package:hmis_web/shared/cubit/states.dart';
import '../../../shared/components/components.dart';
import '../../../shared/styels/colors.dart';

class Doc_request extends StatelessWidget {
  const Doc_request({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    AppCubit cubit = AppCubit.get(context);
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: width * 5 / 100),
          child: Column(
            children: [
              SizedBox(height: 30),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "X-ray Request",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  request(width: width, height: height, cubit: cubit),
                ],
              ),
              SizedBox(height: 30),
              Container(color: MyColors.cPrimary, width: width, height: 1),
              SizedBox(height: 30),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Test Request",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  request(width: width, height: height, cubit: cubit),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
