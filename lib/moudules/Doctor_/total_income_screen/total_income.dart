import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hmis_web/moudules/Doctor_/search_screen/search.dart';
import 'package:hmis_web/shared/cubit/cubit.dart';
import 'package:hmis_web/shared/cubit/states.dart';
import '../../../shared/components/components.dart';
import '../../../shared/styels/colors.dart';
import '../main_menu_screen/main_menu.dart';

class Total_Income extends StatelessWidget {
  const Total_Income({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          width: width,
          child: Scaffold(
            body: Row(
              children: [
                Container(
                  width: 50,
                  color: MyColors.cPrimary,
                  padding: EdgeInsets.symmetric(
                    vertical: height * 15 / 100,
                  ),
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
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    height: width <= 1400 ? null : height,
                    width: width - 50,
                    color: Color(0xffF1F1FF),
                    child: Column(
                      children: [
                        Container(
                          width: width,
                          padding: EdgeInsets.symmetric(
                              horizontal: width < 1000 ? 10 : width * 3 / 100,
                              vertical: height * 5 / 100),
                          color: Colors.white,
                          child: Wrap(
                            spacing: width * 50 / 100,
                            runSpacing: 20,
                            children: [
                              Container(
                                child: Text(
                                  "TOTAL INCOME",
                                  style: TextStyle(
                                    fontSize: 30.sp,
                                    color: MyColors.cPrimary,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: width * 5 / 100,
                              vertical: height * 10 / 100),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Wrap(
                                spacing: width < 1000 ? width : width * 3 / 100,
                                runSpacing: height * 3 / 100,
                                children: [
                                  totleDrop(
                                    label: "From",
                                    value: '01/01/2021',
                                    item: '01/01/2021',
                                  ),
                                  totleDrop(
                                    label: "To",
                                    value: '31/12/2021',
                                    item: '31/12/2021',
                                  ),
                                  totleDrop(
                                    label: "Procedure",
                                    value: 'Surgery',
                                    item: 'Surgery',
                                  ),
                                ],
                              ),
                              SizedBox(height: 30),
                              Wrap(
                                alignment: WrapAlignment.center,
                                spacing: width < 1000 ? width : width * 1 / 100,
                                runSpacing: height * 5 / 100,
                                children: [
                                  totalTabel(
                                    width: 200,
                                    head: 'Visit Date',
                                    firstEle: '22/03/2021',
                                    scondeEle: '05/04/2021',
                                    thirdEle: '05/04/2021',
                                  ),
                                  totalTabel(
                                    width: 300,
                                    head: 'Procedure',
                                    firstEle: 'Surgery',
                                    scondeEle: 'Surgery',
                                    thirdEle: 'Surgery',
                                  ),
                                  totalTabel(
                                    width: 200,
                                    head: 'Payment',
                                    firstEle: '1000',
                                    scondeEle: '2500',
                                    thirdEle: '4000',
                                  ),
                                ],
                              ),
                              SizedBox(height: 100),
                              Wrap(
                                alignment: WrapAlignment.center,
                                spacing: width * 5 / 100,
                                runSpacing: 20,
                                children: [
                                  Container(
                                    width: 180,
                                    height: 50,
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: MyColors.cPrimary,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'TOTAL',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 180,
                                    height: 50,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Color(0xffA3C9D6),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      '7500',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: MyColors.cPrimary,
                                      ),
                                      textAlign: TextAlign.center,
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
                ),
              ],
            ),
          ),
        );

        SizedBox(
          width: width,
          child: Scaffold(
            body: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 70,
                  color: MyColors.cPrimary,
                  //
                  padding: EdgeInsets.symmetric(
                    vertical: height * 15 / 100,
                  ),
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
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    width: width - 70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: width * 5 / 100,
                              vertical: height * 8 / 100),
                          child: Wrap(
                            spacing: width * 40 / 100,
                            runSpacing: 20,
                            children: [
                              Text(
                                'TOTAL INCOME'.toUpperCase(),
                                style: TextStyle(
                                  color: MyColors.cPrimary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: width < 1000 ? height * 2.2 : height * 1,
                          child: SizedBox(
                            width: width,
                            child: Scaffold(
                              body: Container(
                                width: width,
                                color: Color(0xffF1F1FF),
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: width * 5 / 100,
                                      vertical: height * 10 / 100),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Wrap(
                                        spacing: width * 3 / 100,
                                        runSpacing: height * 3 / 100,
                                        children: [
                                          totleDrop(
                                            label: "From",
                                            value: '01/01/2021',
                                            item: '01/01/2021',
                                          ),
                                          totleDrop(
                                            label: "To",
                                            value: '31/12/2021',
                                            item: '31/12/2021',
                                          ),
                                          totleDrop(
                                            label: "Procedure",
                                            value: 'Surgery',
                                            item: 'Surgery',
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 30),
                                      Wrap(
                                        alignment: WrapAlignment.center,
                                        spacing: width * 1 / 100,
                                        runSpacing: height * 5 / 100,
                                        children: [
                                          totalTabel(
                                            width: 200,
                                            head: 'Visit Date',
                                            firstEle: '22/03/2021',
                                            scondeEle: '05/04/2021',
                                            thirdEle: '05/04/2021',
                                          ),
                                          totalTabel(
                                            width: 300,
                                            head: 'Procedure',
                                            firstEle: 'Surgery',
                                            scondeEle: 'Surgery',
                                            thirdEle: 'Surgery',
                                          ),
                                          totalTabel(
                                            width: 200,
                                            head: 'Payment',
                                            firstEle: '1000',
                                            scondeEle: '2500',
                                            thirdEle: '4000',
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 100),
                                      Wrap(
                                        alignment: WrapAlignment.center,
                                        spacing: width * 5 / 100,
                                        children: [
                                          Container(
                                            width: 180,
                                            height: 50,
                                            padding: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                              color: MyColors.cPrimary,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                'TOTAL',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 180,
                                            height: 50,
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                              color: Color(0xffA3C9D6),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Text(
                                              '7500',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,
                                                color: MyColors.cPrimary,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ],
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
              ],
            ),
          ),
        );
      },
    );
  }
}
