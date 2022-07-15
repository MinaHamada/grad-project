import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hmis_web/shared/cubit/cubit.dart';
import 'package:hmis_web/shared/cubit/states.dart';
import 'package:hmis_web/shared/styels/colors.dart';

class Procedures extends StatelessWidget {
  const Procedures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: height * 7 / 100),
          child: Column(
            children: [
              Container(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: width * 10 / 100,
                  runSpacing: width * 2 / 100,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Payment Type',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Radio(
                              value: 1,
                              groupValue: AppCubit.get(context).valCash,
                              onChanged: (value) {
                                AppCubit.get(context).changeStateRCash(value!);
                              },
                              activeColor: Colors.blue,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Cash",
                              style: TextStyle(
                                  color: MyColors.cPrimary,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Radio(
                              value: 2,
                              groupValue: AppCubit.get(context).valCash,
                              onChanged: (value) {
                                AppCubit.get(context).changeStateRCash(value!);
                              },
                              activeColor: Colors.blue,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Free",
                              style: TextStyle(
                                  color: MyColors.cPrimary,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fees Due',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          width: 180,
                          height: 30,
                          color: Color(0xffA3C9D6),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: width * 2 / 100,
                runSpacing: width * 2 / 100,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Procedure Type',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 30,
                        width: width < 800 ? 150 : 250,
                        decoration: BoxDecoration(
                          color: MyColors.cPrimary,
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: DropdownButton(
                          value: 'Check up',
                          icon: Icon(
                            Icons.keyboard_arrow_down_sharp,
                            color: Colors.white,
                          ),
                          style: TextStyle(
                            color: Colors.white,
                            // fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),
                          isExpanded: true,
                          underline: SizedBox(),
                          items: ['Check up']
                              .map((e) => DropdownMenuItem(
                                    child: Text('$e'),
                                    value: e,
                                  ))
                              .toList(),
                          onChanged: (val) {
                            print('OnChange');
                          },
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 30,
                        width: width < 800 ? 150 : 250,
                        decoration: BoxDecoration(
                          color: MyColors.cPrimary,
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: DropdownButton(
                          value: 'Surgery',
                          icon: Icon(
                            Icons.keyboard_arrow_down_sharp,
                            color: Colors.white,
                          ),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                          isExpanded: true,
                          underline: SizedBox(),
                          items: ['Surgery']
                              .map((e) => DropdownMenuItem(
                                    child: Text('$e'),
                                    value: e,
                                  ))
                              .toList(),
                          onChanged: (val) {
                            print('OnChange');
                          },
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 30,
                        width: width < 800 ? 150 : 250,
                        decoration: BoxDecoration(
                          color: MyColors.cPrimary,
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: DropdownButton(
                          icon: Icon(
                            Icons.keyboard_arrow_down_sharp,
                            color: Colors.white,
                          ),
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),
                          isExpanded: true,
                          underline: SizedBox(),
                          items: List.empty()
                              .map((e) => DropdownMenuItem(
                                    child: Text('$e'),
                                    value: e,
                                  ))
                              .toList(),
                          onChanged: (val) {
                            print('OnChange');
                          },
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Payment',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        width: width < 800 ? 100 : 200,
                        height: 30,
                        color: Color(0xffA3C9D6),
                        child: Text(
                          '100',
                          style: TextStyle(
                              color: MyColors.cPrimary,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        width: width < 800 ? 100 : 200,
                        height: 30,
                        color: Color(0xffA3C9D6),
                        child: Text(
                          '1500',
                          style: TextStyle(
                              color: MyColors.cPrimary,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        width: width < 800 ? 100 : 200,
                        height: 30,
                        color: Color(0xffA3C9D6),
                        child: Text(
                          '',
                          style: TextStyle(
                              color: MyColors.cPrimary,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 70),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: width * 7 / 100,
                children: [
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
                    width: 200,
                    height: 50,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xffA3C9D6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      '1600',
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
        );
      },
    );
  }
}
