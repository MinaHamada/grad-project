import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../shared/components/components.dart';
import '../../../shared/cubit/cubit.dart';
import '../../../shared/cubit/states.dart';
import '../../../shared/styels/colors.dart';
import '../../Doctor_/search_screen/search.dart';
import '../rad_main_menu/rad_main_menu.dart';

class X_Request_screen extends StatelessWidget {
  const X_Request_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var NameController = TextEditingController();
    var PriceController = TextEditingController();
    var categoryController = TextEditingController();
    var fileController = TextEditingController();
    var Add_DateController = TextEditingController();
    List invoic = [
      "Amr Osama",
      "Ali Ashraf",
      "Nada Refaee",
      "Mina Hamada",
      "Hossam Hassan",
      "Martin Sameh",
      "Youssef Saied",
      "Youssef Mahmoud",
    ];
    List test = [
      "Bone x-ray.",
      "Chest x-ray.",
      "",
      "",
      "",
    ];
    List view = [
      "View",
      "View",
      "",
      "",
      "",
    ];
    List label = [
      'Name',
      'Price',
      'Category',
      'file',
      'Add Date',
    ];
    List controller = [
      NameController,
      PriceController,
      categoryController,
      fileController,
      Add_DateController,
    ];
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
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
                      SizedBox(height: 30),
                      IconButton(
                          onPressed: () {},
                          icon: Image(
                            image: AssetImage("image/fIcon/save.png"),
                          )),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    height: null,
                    color: Color(0xffF1F1FF),
                    width: width - 70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: width,
                          color: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: width * 3 / 100,
                              vertical: height * 8 / 100),
                          child: Text(
                            'X-Rays REQUESTS',
                            style: TextStyle(
                              fontSize: 30.sp,
                              color: MyColors.cPrimary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          width: width - 70,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: width * 10 / 100,
                                  vertical: 15,
                                ),
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
                                          "${invoic[index]}",
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
                              Container(
                                width: double.infinity,
                                height: 1,
                                color: MyColors.cPrimary,
                              ),
                              Container(
                                width: width <= 1400 ? width * 90 / 100 : 1230,
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.symmetric(
                                    horizontal: width * 1 / 100,
                                    vertical: height * 3 / 100),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      width: 1, color: Colors.black45),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Spacer(),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.close),
                                          color: MyColors.cErrorColor,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          child: Wrap(
                                            spacing: width * 5 / 100,
                                            runSpacing: height * 6 / 100,
                                            alignment: WrapAlignment.start,
                                            children: [
                                              Text(
                                                "Ali Ashraf Invoice",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                ),
                                              ),
                                              req_info(
                                                width: width,
                                                height: height,
                                                up_text: "Request Code :",
                                                down_text: " 12345",
                                              ),
                                              req_info(
                                                width: width,
                                                height: height,
                                                up_text: "Total Chrage :",
                                                down_text: " 100.00 EGP",
                                              ),
                                              req_Oinfo(
                                                width: width,
                                                height: height,
                                                up_text: "Status :",
                                                down_text: " Complete ",
                                              ),
                                              req_info(
                                                width: width,
                                                height: height,
                                                up_text: "Phone No.:",
                                                down_text: " 01123456789",
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 30),
                                        Center(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "X-rays Done:",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: MyColors.cPrimary,
                                                  fontSize: 17,
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Container(
                                                width: 400,
                                                height: 250,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: MyColors.cPrimary,
                                                      width: 1),
                                                ),
                                                child: SingleChildScrollView(
                                                  child: Wrap(
                                                    children: List.generate(
                                                      5,
                                                      (index) => Container(
                                                        padding:
                                                            EdgeInsets.all(10),
                                                        height:
                                                            height * 7.7 / 100,
                                                        width: width,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xffF1F1FF),
                                                          border: Border(
                                                            bottom: BorderSide(
                                                              color: MyColors
                                                                  .cPrimary,
                                                              width: 1,
                                                            ),
                                                          ),
                                                        ),
                                                        child: Row(
                                                          children: [
                                                            Text(
                                                              "${test[index]}",
                                                              style: TextStyle(
                                                                color: MyColors
                                                                    .cPrimary,
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            ),
                                                            Spacer(),
                                                            TextButton(
                                                              onPressed: () {},
                                                              child: Text(
                                                                "${view[index]}",
                                                                style:
                                                                    TextStyle(
                                                                  color: Color(
                                                                      0xff23B59C),
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
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
                                        SizedBox(height: 30),
                                        Center(
                                          child: Wrap(
                                            alignment: WrapAlignment.center,
                                            spacing: width * 3 / 100,
                                            runSpacing: 30,
                                            children: [
                                              commonButton(
                                                width: 150,
                                                height: 40,
                                                text: "Edit",
                                                buttonColor: MyColors.cPrimary,
                                                textColor: Colors.white,
                                                Pressed: () {},
                                              ),
                                              commonButton(
                                                width: 150,
                                                height: 40,
                                                text: "GENERATE INVOICE",
                                                buttonColor: Color(0xffA3C9D6),
                                                textColor: MyColors.cPrimary,
                                                Pressed: () {},
                                                textSize: 12,
                                                fontWeight: FontWeight.w700,
                                              ),
                                              commonButton(
                                                width: 150,
                                                height: 40,
                                                text: "SEND",
                                                buttonColor: MyColors.cPrimary,
                                                textColor: Colors.white,
                                                Pressed: () {},
                                              ),
                                              commonButton(
                                                width: 150,
                                                height: 40,
                                                text: "DELETE REQUEST",
                                                buttonColor: Color(0xffFF0000)
                                                    .withOpacity(38 / 100),
                                                textColor: Color(0xffBC2729),
                                                Pressed: () {},
                                                textSize: 12,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 30),
                                    Container(
                                      width: width,
                                      height: 1,
                                      color: MyColors.cPrimary,
                                    ),
                                    SizedBox(height: 30),
                                    Center(
                                      child: Column(
                                        children: [
                                          Wrap(
                                            alignment: WrapAlignment.center,
                                            spacing: width <= 1400
                                                ? width * 10 / 100
                                                : width * 12 / 100,
                                            runSpacing: height * 5 / 100,
                                            // 'Name',
                                            // 'Price',
                                            // 'Category',
                                            // 'file',
                                            // 'Add Date',
                                            children: [
                                              drugfield(
                                                  text: "Name",
                                                  margin: width * 2 / 100,
                                                  controller: controller[0]),
                                              drugfield(
                                                  text: "price",
                                                  margin: width * 2 / 100,
                                                  controller: controller[1]),
                                              drugfield(
                                                  text: "category",
                                                  margin: width * 2 / 100,
                                                  controller: controller[2]),
                                              GestureDetector(
                                                onTap: () async {
                                                  FilePickerResult? result =
                                                      await FilePicker.platform
                                                          .pickFiles();
                                                  if (result == null) return;
                                                },
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          left:
                                                              width * 2 / 100),
                                                      child: TextPage(
                                                          text: "file",
                                                          fontSize: 18,
                                                          weight:
                                                              FontWeight.w600,
                                                          color: MyColors
                                                              .cPrimary),
                                                    ),
                                                    SizedBox(height: .01.sh),
                                                    Container(
                                                      width: 250,
                                                      child: TextFormField(
                                                        decoration:
                                                            InputDecoration(
                                                          border:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        70),
                                                          ),
                                                          suffixIcon: Icon(Icons
                                                              .attachment_outlined),
                                                          fillColor:
                                                              Colors.white,
                                                          filled: true,
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        25.0),
                                                            borderSide:
                                                                BorderSide(
                                                              color: MyColors
                                                                  .cPrimary,
                                                              width: 2.0,
                                                            ),
                                                          ),
                                                        ),
                                                        validator: (value) {
                                                          if (value == null ||
                                                              value.isEmpty) {
                                                            return 'this Field must not be Empty';
                                                          }
                                                          return null;
                                                        },
                                                        controller:
                                                            controller[3],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              drugfield(
                                                  text: "Adedd Data",
                                                  margin: width * 2 / 100,
                                                  controller: controller[4]),
                                            ],
                                          ),
                                          SizedBox(height: 50),
                                          commonButton(
                                            width: 150,
                                            height: 40,
                                            text: "Save",
                                            buttonColor: MyColors.cPrimary,
                                            textColor: Colors.white,
                                            Pressed: () {},
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
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
