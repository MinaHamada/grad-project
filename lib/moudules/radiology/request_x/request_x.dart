import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hmis_web/shared/cubit/cubit.dart';
import 'package:hmis_web/shared/cubit/states.dart';
import 'package:hmis_web/shared/styels/colors.dart';
import '../../../shared/components/components.dart';
import '../../Doctor_/search_screen/search.dart';
import '../rad_main_menu/rad_main_menu.dart';

class Request_X extends StatelessWidget {
  const Request_X({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    AppCubit cubit = AppCubit.get(context);
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
                          navigateTo(context, Rad_Main());
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
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 5 / 100,
                            vertical: height * 5 / 100),
                        child: Text(
                          'request test'.toUpperCase(),
                          style: TextStyle(
                            fontSize: 30.sp,
                            color: MyColors.cPrimary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        width: width - 70,
                        height: height,
                        color: Color(0xffF1F1FF),
                        child: Container(
                          margin: EdgeInsets.only(top: width * 8 / 100),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Wrap(
                                spacing: 50,
                                runSpacing: 50,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Drop(
                                        width: 300,
                                        value: 'Choose one..',
                                        item: 'Choose one..',
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        width: 100,
                                        height: 30,
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                        ),
                                        child: TextButton(
                                          onPressed: () {
                                            cubit.increaselength();
                                          },
                                          child: Text(
                                            'List',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 400,
                                    height: 250,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: MyColors.cPrimary, width: 1),
                                    ),
                                    child: SingleChildScrollView(
                                      child: Wrap(
                                        children: List.generate(
                                          cubit.num,
                                          (index) => Container(
                                            padding: EdgeInsets.all(10),
                                            height: 50,
                                            width: width,
                                            decoration: BoxDecoration(
                                              border: Border(
                                                bottom: BorderSide(
                                                  color: MyColors.cPrimary,
                                                  width: 1,
                                                ),
                                              ),
                                            ),
                                            child: Text(
                                              "$index",
                                              style: TextStyle(
                                                color: MyColors.cPrimary,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: height * 10 / 100),
                              Container(
                                width: 200,
                                height: 50,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: MyColors.cPrimary,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'SUBMIT',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
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
              ],
            ),
          ),
        );
      },
    );
  }
}
