import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hmis_web/shared/cubit/cubit.dart';
import 'package:hmis_web/shared/cubit/states.dart';

import '../../../shared/components/components.dart';
import '../../../shared/styels/colors.dart';
import '../main_menu/main_phar.dart';

class Search_Drugs extends StatelessWidget {
  const Search_Drugs({Key? key}) : super(key: key);

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: MyColors.cPrimary,
                  padding: EdgeInsets.symmetric(
                      vertical: height * 15 / 100,
                      horizontal: width * .5 / 100),
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          navigateTo(context, Main_Menu_Pharmacy_screen());
                        },
                        icon: Icon(
                          Icons.home,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: SingleChildScrollView(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: width * 5 / 100,
                                vertical: height * 5 / 100),
                            child: Wrap(
                              spacing: width * 40 / 100,
                              runSpacing: 20,
                              children: [
                                Text(
                                  'search for a DRUG'.toUpperCase(),
                                  style: TextStyle(
                                    color: MyColors.cPrimary,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: width < 1000 ? height * 2.7 : height * 2,
                            child: SizedBox(
                              width: width,
                              child: Scaffold(
                                body: Container(
                                  width: width,
                                  color: Color(0xffF1F1FF),
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: width * 5 / 100,
                                        vertical: height * 5 / 100),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Wrap(
                                          alignment: WrapAlignment.center,
                                          spacing: width * 4.5 / 100,
                                          runSpacing: height * 3 / 100,
                                          children: [
                                            searchPatientField(
                                              hintText: 'Search by Name',
                                            ),
                                            searchPatientField(
                                              hintText:
                                                  'Search by Active Substance',
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 30),
                                        Container(
                                          width: 170,
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            color: Color(0xff4F96BE),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              'Search'.toUpperCase(),
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '3 Results Found',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 30),
                                        Wrap(
                                          runSpacing: height * 2 / 100,
                                          children: List.generate(
                                            3,
                                            (index) => Container(
                                              width: 1000,
                                              child: Card(
                                                elevation: 5,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: Container(
                                                  padding: EdgeInsets.all(10),
                                                  child: Wrap(
                                                    alignment:
                                                        WrapAlignment.center,
                                                    spacing: width <= 1000
                                                        ? width * 8 / 100
                                                        : 200,
                                                    runSpacing:
                                                        height * 5 / 100,
                                                    children: [
                                                      Container(
                                                        width: 200,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              'Drug Name',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                            SizedBox(
                                                                height: width *
                                                                    3 /
                                                                    100),
                                                            Text(
                                                              'Text',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Color(
                                                                    0xff4F96BE),
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 200,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              'Active Substance',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                            SizedBox(
                                                                height: width *
                                                                    3 /
                                                                    100),
                                                            Text(
                                                              'Text',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Color(
                                                                    0xff4F96BE),
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets
                                                            .symmetric(
                                                                vertical: 20),
                                                        padding:
                                                            EdgeInsets.all(10),
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xff4F96BE),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                        ),
                                                        child: TextButton(
                                                          onPressed: () {},
                                                          child: Text(
                                                            'View Drug',
                                                            style: TextStyle(
                                                              fontSize: 15,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
