import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../shared/components/components.dart';
import '../../../shared/cubit/cubit.dart';
import '../../../shared/cubit/states.dart';
import '../../../shared/styels/colors.dart';
import '../../Doctor_/search_screen/search.dart';
import '../lab_main_menu/lab_main.dart';

class Medical_Tests_Data extends StatelessWidget {
  const Medical_Tests_Data({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var formKey = GlobalKey<FormState>();
    var test_NameController = TextEditingController();
    var codeController = TextEditingController();
    var categoryController = TextEditingController();
    var minimum_priceController = TextEditingController();
    var maximum_priceController = TextEditingController();
    var average_priceController = TextEditingController();
    var price_priceController = TextEditingController();
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        List label = [
          'Test Name',
          'Code',
          'Category',
          'Minimum ',
          'Maximum ',
          'Average ',
          "price"
        ];
        List controller = [
          test_NameController,
          codeController,
          categoryController,
          minimum_priceController,
          maximum_priceController,
          average_priceController,
          price_priceController,
        ];
        return SizedBox(
          width: width,
          child: Scaffold(
            body: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: MyColors.cPrimary,
                  width: 70,
                  padding: EdgeInsets.symmetric(
                    vertical: height * 15 / 100,
                  ),
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          navigateTo(context, lab_Main());
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
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: width * 2 / 100,
                              vertical: height * 8 / 100),
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            spacing: width * 40 / 100,
                            runSpacing: 20,
                            children: [
                              Text(
                                'Medical tests Data'.toUpperCase(),
                                style: TextStyle(
                                  color: MyColors.cPrimary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30.sp,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(7),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: MyColors.cPrimary,
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: width * .5 / 100),
                                      Text(
                                        'NEW TEST',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13.sp),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: width < 700 ? height * 1.5 : height * 1,
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
                                        alignment: WrapAlignment.center,
                                        spacing: width <= 1400
                                            ? width * 5 / 100
                                            : width * 12 / 100,
                                        runSpacing: height * 5 / 100,
                                        children: List.generate(
                                          7,
                                          (index) => tFormfield(
                                              margin: width * 2 / 100,
                                              text: '${label[index]}',
                                              width: 250,
                                              controller: controller[index],
                                              textSize: 18),
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
              ],
            ),
          ),
        );
      },
    );
  }
}
