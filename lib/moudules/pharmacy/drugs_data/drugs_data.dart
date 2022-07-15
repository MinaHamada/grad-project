import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../shared/components/components.dart';
import '../../../shared/cubit/cubit.dart';
import '../../../shared/cubit/states.dart';
import '../../../shared/styels/colors.dart';
import '../main_menu/main_phar.dart';
import '../search/search_drug.dart';

class DRUGS_Data extends StatelessWidget {
  const DRUGS_Data({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var formKey = GlobalKey<FormState>();
    var drug_Namecontroller = TextEditingController();
    var Drug_IDcontroller = TextEditingController();
    var Drug_Codecontroller = TextEditingController();
    var active_substancecontroller = TextEditingController();
    var Categorycontroller = TextEditingController();
    var Dosecontroller = TextEditingController();
    var Production_Datecontroller = TextEditingController();
    var Expiration_datecontroller = TextEditingController();
    var Physical_Formcontroller = TextEditingController();
    var Method_of_Adminstrationcontroller = TextEditingController();
    var Statuscontroller = TextEditingController();
    var Quantitycontroller = TextEditingController();
    var Pricecontroller = TextEditingController();
    var Totalcontroller = TextEditingController();
    List controller = [
      drug_Namecontroller,
      Drug_IDcontroller,
      Drug_Codecontroller,
      Categorycontroller,
      Dosecontroller,
      Production_Datecontroller,
      Expiration_datecontroller,
      Physical_Formcontroller,
      Method_of_Adminstrationcontroller,
      active_substancecontroller,
      Statuscontroller,
      Quantitycontroller,
      Pricecontroller,
      Totalcontroller,
    ];
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
                  width: 70,
                  padding: EdgeInsets.symmetric(
                    vertical: height * 15 / 100,
                  ),
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
                          navigateTo(context, Search_Drugs());
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
                            spacing: width * 50 / 100,
                            runSpacing: 20,
                            children: [
                              Text(
                                'DRUGS Data'.toUpperCase(),
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
                                        'NEW DRUG',
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
                          height: width < 700 ? height * 2.5 : height * 1.5,
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
                                        children: [
                                          drugfield(
                                              text: "Drug Name",
                                              margin: width * 2 / 100,
                                              controller: drug_Namecontroller),
                                          drugfield(
                                              text: "Drug ID",
                                              margin: width * 2 / 100,
                                              controller: Drug_IDcontroller),
                                          drugfield(
                                              text: "Drug Code",
                                              margin: width * 2 / 100,
                                              controller: Drug_Codecontroller),
                                          drugfield(
                                              text: "Active Substance",
                                              margin: width * 2 / 100,
                                              controller:
                                                  active_substancecontroller),
                                          drugfield(
                                              text: "Category",
                                              margin: width * 2 / 100,
                                              controller: Categorycontroller),
                                          drugfield(
                                              text: "Dose",
                                              margin: width * 2 / 100,
                                              controller: Dosecontroller),
                                          drugfield(
                                              text: "Production Date",
                                              margin: width * 2 / 100,
                                              controller:
                                                  Production_Datecontroller),
                                          drugfield(
                                              text: "Expiration date",
                                              margin: width * 2 / 100,
                                              controller:
                                                  Expiration_datecontroller),
                                          drugfield(
                                              text: "Physical Form",
                                              margin: width * 2 / 100,
                                              controller:
                                                  Physical_Formcontroller),
                                          drugfield(
                                              text: "Method of Adminstration",
                                              margin: width * 2 / 100,
                                              controller:
                                                  Method_of_Adminstrationcontroller),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Stock",
                                                style: TextStyle(
                                                    color: MyColors.cPrimary,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 18),
                                              ),
                                              stock(
                                                  text: "Status",
                                                  controller: Statuscontroller),
                                              SizedBox(height: 10),
                                              stock(
                                                  text: "Quantity",
                                                  controller:
                                                      Quantitycontroller),
                                              SizedBox(height: 10),
                                              stock(
                                                  text: "Price",
                                                  controller: Pricecontroller),
                                              SizedBox(height: 10),
                                              stock(
                                                  text: "Total",
                                                  controller: Totalcontroller),
                                            ],
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
