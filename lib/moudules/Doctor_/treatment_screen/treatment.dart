import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hmis_web/shared/cubit/cubit.dart';
import 'package:hmis_web/shared/cubit/states.dart';
import 'package:hmis_web/shared/styels/colors.dart';

import '../../../shared/components/components.dart';

class Treatment extends StatelessWidget {
  const Treatment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Wrap(
                runSpacing: height * 2 / 100,
                spacing: width <= 1300 ? width * 5 / 100 : width * 15 / 100,
                children: List.generate(
                  6,
                  (index) => treatDrop(),
                ),
              ),
              SizedBox(height: height * 5 / 100),
              Wrap(
                alignment: WrapAlignment.center,
                runSpacing: height * 2 / 100,
                spacing: width * 2 / 100,
                children: List.generate(
                  6,
                  (index) => treatDrop(
                    contWidth: width < 800 ? 200 : 300,
                    contheight: 30,
                    dropColor: Colors.white,
                    dropWidth: width < 800 ? 200 : 300,
                    dropheight: 60,
                    border: Border.all(width: 1, color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: height * 5 / 100),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: width * 4 / 100,
                runSpacing: height * 4 / 100,
                children: [
                  Container(
                    // width: 220,
                    color: Colors.grey,
                    padding: EdgeInsets.all(20),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'PREVIEW',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    padding: EdgeInsets.all(20),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'PRINT REPORT',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
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
