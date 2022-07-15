import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../shared/components/components.dart';
import '../../../shared/cubit/cubit.dart';
import '../../../shared/cubit/states.dart';
import '../../../shared/styels/colors.dart';
import '../main_menu/main_phar.dart';

class Dispense_prescription extends StatelessWidget {
  const Dispense_prescription({Key? key}) : super(key: key);

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
                  width: 50,
                  color: MyColors.cPrimary,
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
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 3 / 100,
                            vertical: height * 8 / 100),
                        child: Text(
                          'Dispense prescription',
                          style: TextStyle(
                            fontSize: 30.sp,
                            color: MyColors.cPrimary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        width: width - 50,
                        height: width <= 1400 ? null : height,
                        padding: EdgeInsets.symmetric(vertical: 20),
                        color: Color(0xffF1F1FF),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Text(
                                    "Dispence Prescription ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
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
                                Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.end,
                                  alignment: WrapAlignment.center,
                                  runSpacing: 20,
                                  children: [
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
                                    SizedBox(width: 30),
                                    commonButton(
                                        height: 40,
                                        width: 150,
                                        textSize: 15,
                                        fontWeight: FontWeight.w700,
                                        text: "Dispense".toUpperCase(),
                                        buttonColor: MyColors.cPrimary,
                                        textColor: Colors.white,
                                        Pressed: () {}),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: MyColors.cPrimary,
                            ),
                            Container(
                              width: 1000,
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.symmetric(
                                  horizontal: width * 1 / 100,
                                  vertical: height * 3 / 100),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(width: 1, color: Colors.black45),
                                color: Colors.white,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Prescription Invoice",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Spacer(),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.close),
                                        color: MyColors.cErrorColor,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 30),
                                  Wrap(
                                    alignment: WrapAlignment.center,
                                    runSpacing: 50,
                                    children: [
                                      Container(
                                        child: Wrap(
                                          runSpacing: height * 6 / 100,
                                          alignment: WrapAlignment.center,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.end,
                                          children: [
                                            Container(
                                              width: 700,
                                              child: Wrap(
                                                spacing: width * 3 / 100,
                                                runSpacing: 50,
                                                children: [
                                                  Dispence_info(
                                                    width: width,
                                                    height: height,
                                                    up_text: "Item:",
                                                    down_text: "Adol",
                                                  ),
                                                  Dispence_info(
                                                    width: width,
                                                    height: height,
                                                    up_text: "Quantity:",
                                                    down_text: "1",
                                                  ),
                                                  Dispence_info(
                                                    width: width,
                                                    height: height,
                                                    up_text: "Price:",
                                                    down_text: "20 EGP",
                                                  ),
                                                  Dispence_info(
                                                    width: width,
                                                    height: height,
                                                    up_text: "Item:",
                                                    down_text: "Cataflam",
                                                  ),
                                                  Dispence_info(
                                                    width: width,
                                                    height: height,
                                                    up_text: "Quantity:",
                                                    down_text: "2",
                                                  ),
                                                  Dispence_info(
                                                    width: width,
                                                    height: height,
                                                    up_text: "Price:",
                                                    down_text: "20 EGP",
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: Color(0xffA3C9D6),
                                              ),
                                              width: 200,
                                              height: 200,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'TOTAL',
                                                    style: TextStyle(
                                                      color: MyColors.cPrimary,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Text(
                                                    '40 EGP',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 20),
                                            Container(
                                              width: 100,
                                              height: 30,
                                              padding: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                color: MyColors.cPrimary,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  'Edit',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
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
