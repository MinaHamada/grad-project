import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hmis_web/shared/components/components.dart';
import 'package:hmis_web/shared/cubit/cubit.dart';
import 'package:hmis_web/shared/cubit/states.dart';
import 'package:hmis_web/shared/styels/colors.dart';

class Our_Doctors extends StatelessWidget {
  const Our_Doctors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var width = MediaQuery.of(context).size.width;
        var height = MediaQuery.of(context).size.height;

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
                    text: 'OUR DOCTORS'.toUpperCase(),
                  ),
                  SizedBox(height: height * 5 / 100),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: .2.sw),
                    child: Wrap(
                      spacing: width * 5 / 100,
                      runSpacing: height * 5 / 100,
                      children: [
                        Container(
                          width: 360,
                          child: TextFormField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                IconlyLight.search,
                                color: MyColors.cPrimary,
                                size: 20,
                              ),
                              hintText: "Search doctor by Name",
                              hintStyle: TextStyle(
                                color: Colors.black.withOpacity(50 / 100),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: MyColors.cPrimary,
                                  width: 1.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 360,
                          child: TextFormField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                IconlyLight.arrowDown2,
                                color: MyColors.cPrimary,
                                size: 20,
                              ),
                              hintText: "Search by Departments",
                              hintStyle: TextStyle(
                                color: Colors.black.withOpacity(50 / 100),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: MyColors.cPrimary,
                                  width: 1.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 10 / 100,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: width * 20 / 100,
                    ),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      spacing:
                          width <= 1700 ? width * 1 / 100 : width * 4 / 100,
                      runSpacing: height * 5 / 100,
                      children: List.generate(
                        6,
                        (index) => doctors(
                            spacing: height * 1 / 100,
                            image: "image/main/doc.png",
                            doctorName: "Doctor Name"),
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
