import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hmis_web/shared/components/components.dart';
import 'package:hmis_web/shared/cubit/cubit.dart';
import 'package:hmis_web/shared/cubit/states.dart';
import 'package:hmis_web/shared/styels/colors.dart';

class PatientSheet extends StatelessWidget {
  const PatientSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var width = MediaQuery.of(context).size.width;
        var height = MediaQuery.of(context).size.height;
        AppCubit cubit = AppCubit.get(context);
        return Container(
          margin: EdgeInsets.symmetric(horizontal: width * 6 / 100),
          width: 1230,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Wrap(
                spacing: width * 9 / 100,
                runSpacing: height * 4 / 100,
                alignment: WrapAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // margin: EdgeInsets.only(left: 30, bottom: 3),
                        child: Text(
                          'Note',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        width: 350,
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 50.0, horizontal: 10.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            fillColor: Colors.white,
                            filled: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: 350,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffA3C9D6),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: List.generate(
                          4,
                          (index) => dropList(),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 180,
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      color: Color(0xffA3C9D6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'DIABETIC',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 5),
                            Checkbox(
                              value: cubit.sele,
                              activeColor: Colors.blue,
                              focusColor: Colors.white,
                              onChanged: (val) {
                                print(val);
                                cubit.test();
                                cubit.sele = val!;
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'SINCE',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: 80,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  filled: true,
                                  border: InputBorder.none,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: width < 1300
                    ? MainAxisAlignment.center
                    : MainAxisAlignment.end,
                children: [
                  Container(
                    child: Wrap(
                      children: [
                        Column(
                          children: [
                            Text(
                              'HISTORY DATA',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: 120,
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: MyColors.cPrimary,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Visit H',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  width: 120,
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color:
                                        Color(0xff0F357A).withOpacity(60 / 100),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Trmt. H',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 3 / 100),
              Container(color: MyColors.cPrimary, width: width, height: 1),
              Container(
                width: width * 80 / 100,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(vertical: height * 3 / 100),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: Colors.black45),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Patient Visit History",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
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
                    SizedBox(height: 10),
                    Container(
                      margin: EdgeInsets.only(left: width * 5 / 100),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        spacing: width * 1 / 100,
                        runSpacing: height * 3 / 100,
                        children: List.generate(
                          10,
                          (index) => Container(
                            width: 180,
                            height: 50,
                            color: Color(0xffA3C9D6),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
