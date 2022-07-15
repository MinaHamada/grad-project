import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hmis_web/shared/cubit/cubit.dart';
import 'package:hmis_web/shared/cubit/states.dart';
import 'package:hmis_web/shared/styels/colors.dart';

import '../../../shared/components/components.dart';
import '../main_menu_screen/main_menu.dart';
import '../search_screen/search.dart';

class Customize_Data_Base extends StatelessWidget {
  const Customize_Data_Base({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return SizedBox(
          width: width,
          child: Scaffold(
            body: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: width * 12 / 100),
                  width: 70,
                  color: MyColors.cPrimary,
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          navigateTo(context, Main_Menu_screen());
                        },
                        icon: Icon(
                          Icons.home,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      SizedBox(height: 30),
                      IconButton(
                        onPressed: () {
                          navigateTo(context, Search_patient());
                        },
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      SizedBox(height: 30),
                      IconButton(
                          onPressed: () {},
                          icon: Image(
                            image: AssetImage("image/fIcon/save.png"),
                          )),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    height: width <= 905 ? null : height,
                    color: Color(0xffF1F1FF),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        doc_header(
                          width: width,
                          height: height,
                          text: "Customize data base",
                        ),
                        Container(
                          width: width - 70,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: width * 10 / 100,
                              vertical: height * 10 / 100,
                            ),
                            child: Wrap(
                              alignment: WrapAlignment.center,
                              spacing: width < 1600
                                  ? width * 3 / 100
                                  : width * 5 / 100,
                              runSpacing: height * 5 / 100,
                              children: List.generate(
                                12,
                                (index) => Container(
                                  width: 200,
                                  height: 50,
                                  color: Color(0xffA3C9D6),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
