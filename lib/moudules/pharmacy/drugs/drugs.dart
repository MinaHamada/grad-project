import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../shared/components/components.dart';
import '../../../shared/cubit/cubit.dart';
import '../../../shared/cubit/states.dart';
import '../../../shared/styels/colors.dart';
import '../../Doctor_/search_screen/search.dart';
import '../main_menu/main_phar.dart';

class DRUGS extends StatelessWidget {
  const DRUGS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    List dec = [
      "Drug ID:",
      "Drug Code:",
      "Active Substance:",
      "Category:",
      "Dose:",
      "Production Date:",
      "Expiration date:",
      "Physical Form:",
      "Method of Adminstration:",
      "Stock:",
      "Is It Available?",
    ];
    List info = [
      "12345",
      "drug12345",
      "Text",
      "Text",
      "3 Doses",
      "05/01/2022",
      "05/07/2022",
      "Text",
      "Text",
      "Text",
      "Text",
    ];

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
                          navigateTo(context, Main_Menu_Pharmacy_screen());
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
                            horizontal: width * 3 / 100,
                            vertical: height * 8 / 100),
                        child: Text(
                          'DRUGS',
                          style: TextStyle(
                            fontSize: 30.sp,
                            color: MyColors.cPrimary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        width: width - 70,
                        height: width < 1300 ? null : height,
                        color: Color(0xffF1F1FF),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: width * 10 / 100,
                                vertical: 15,
                              ),
                              child: Container(
                                width: width < 1400 ? width * 90 / 100 : 1230,
                                child: Wrap(
                                  alignment: WrapAlignment.center,
                                  spacing: width < 1600
                                      ? width * 3 / 100
                                      : width * 5 / 100,
                                  runSpacing: 15,
                                  children: List.generate(
                                    8,
                                    (index) => Container(
                                      width: 200,
                                      height: 50,
                                      color: Color(0xffA3C9D6),
                                      child: Center(
                                        child: Text(
                                          "Drug Name",
                                          style: TextStyle(
                                            color: MyColors.cPrimary,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: MyColors.cPrimary,
                            ),
                            Container(
                              width: width < 1400 ? width * 90 / 100 : 1230,
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
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Drug Name",
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
                                        width: width < 800 ? 600 : 900,
                                        child: Wrap(
                                          spacing: width <= 1400
                                              ? width * 8 / 100
                                              : 120,
                                          runSpacing: 50,
                                          alignment: WrapAlignment.center,
                                          children: List.generate(
                                            11,
                                            (index) => Drug_info(
                                              width: width,
                                              height: height,
                                              up_text: "${dec[index]}",
                                              down_text: "${info[index]}",
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        SizedBox(height: 30),
                                        Wrap(
                                          spacing: 40,
                                          runSpacing: 40,
                                          children: [
                                            commonButton(
                                              width: 150,
                                              height: 40,
                                              text: "Edit",
                                              buttonColor: MyColors.cPrimary,
                                              textColor: Colors.white,
                                              Pressed: () {},
                                              textSize: 15,
                                            ),
                                            commonButton(
                                              width: 150,
                                              height: 40,
                                              text: "DELETE Drug",
                                              buttonColor: Color(0xffFF0000)
                                                  .withOpacity(38 / 100),
                                              textColor: Color(0xffBC2729),
                                              Pressed: () {},
                                              textSize: 12,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
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
