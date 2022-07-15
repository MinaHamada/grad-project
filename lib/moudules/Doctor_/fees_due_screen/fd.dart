import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hmis_web/shared/cubit/cubit.dart';
import 'package:hmis_web/shared/cubit/states.dart';
import '../../../shared/components/components.dart';
import '../../../shared/styels/colors.dart';

class FD extends StatelessWidget {
  const FD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 80),
          child: Column(
            children: [
              Container(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: width * 1 / 100,
                  runSpacing: height * 5 / 100,
                  children: [
                    totalTabel(
                      width: 180,
                      head: 'Visit Date',
                      firstEle: '22/03/2022',
                      scondeEle: '05/04/2022',
                      thirdEle: '',
                    ),
                    totalTabel(
                      width: width < 800 ? 100 : 200,
                      head: 'Fees Due',
                      firstEle: '100',
                      scondeEle: '300',
                      thirdEle: '',
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Column(children: [
                        IconButton(
                          iconSize: 35,
                          onPressed: () {},
                          icon: Image(
                            image: AssetImage("image/main/delete.png"),
                          ),
                        ),
                        SizedBox(height: height * 2 / 100),
                        IconButton(
                          iconSize: 35,
                          onPressed: () {},
                          icon: Image(
                            image: AssetImage("image/main/delete.png"),
                          ),
                        ),
                        SizedBox(height: height * 2 / 100),
                        IconButton(
                          iconSize: 35,
                          onPressed: () {},
                          icon: Image(
                            image: AssetImage("image/main/delete.png"),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 70),
              Container(
                margin: EdgeInsets.only(right: width * 5 / 100),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: width * 3 / 100,
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
                        '400',
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
              ),
            ],
          ),
        );
      },
    );
  }
}
