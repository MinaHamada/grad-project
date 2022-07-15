import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hmis_web/shared/cubit/cubit.dart';
import 'package:hmis_web/shared/styels/colors.dart';

import '../../layout/home_layout/home_layout.dart';
import '../../moudules/home_body/departments_index.dart';
import '../../moudules/home_body/our_doctors_index.dart';

Widget TextPage({
  required String text,
  double? fontSize,
  Color color: Colors.white,
  FontWeight? weight = FontWeight.bold,
  String fontFamily = 'Montserrat',
}) {
  return Text(
    '$text',
    style: TextStyle(
      fontFamily: '$fontFamily',
      fontSize: fontSize,
      fontWeight: weight,
      color: color,
    ),
  );
}

Widget Drug_info({
  required double width,
  required double height,
  required String up_text,
  required String down_text,
}) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '$up_text',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
            color: MyColors.cPrimary,
          ),
        ),
        SizedBox(height: width * 1 / 100),
        Text(
          '$down_text',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xff4F96BE),
            fontSize: 17,
          ),
        ),
      ],
    ),
  );
}

Widget prescriptio_info({
  required double width,
  required double height,
  required String up_text,
  required String down_text,
}) {
  return Container(
    width: 200,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '$up_text',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
            color: MyColors.cPrimary,
          ),
        ),
        SizedBox(height: width * 1 / 100),
        Text(
          '$down_text',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xff4F96BE),
            fontSize: 17,
          ),
        ),
      ],
    ),
  );
}

Widget iconDep({
  required String image,
  required String text,
  required double widthImg,
  required double heightImg,
  required double spacing,
  double width = 200,
  required BuildContext context,
}) {
  return Container(
    height: 200,
    width: width,
    child: Column(
      children: [
        Image(
          image: AssetImage('$image'),
          // width: .15.sw,
          // height: .15.sh,
          width: widthImg,
          height: heightImg,
        ),
        // SizedBox(height: .03.sh),
        SizedBox(
          height: spacing,
        ),
        TextButton(
          onPressed: () {
            navigateTo(context, OurDoctorsIndex());
          },
          child: Text(
            '$text',
            style: TextStyle(
              color: MyColors.cErrorColor,
              fontSize: 22,
              fontWeight: FontWeight.w600,
              fontFamily: 'Montserrat',
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
  );
}

Widget doc_header({
  required double width,
  required double height,
  required String text,
}) {
  return Container(
    color: Colors.white,
    width: width - 70,
    padding: EdgeInsets.symmetric(
        horizontal: width * 5 / 100, vertical: height * 8 / 100),
    child: Text(
      '$text',
      style: TextStyle(
        fontSize: 30.sp,
        color: MyColors.cPrimary,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}

Widget request({
  required double width,
  required double height,
  required AppCubit cubit,
}) {
  return Column(
    children: [
      Wrap(
        alignment: WrapAlignment.center,
        spacing: 50,
        runSpacing: 20,
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
              SizedBox(height: height * 5 / 100),
            ],
          ),
          Container(
            width: 400,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: MyColors.cPrimary, width: 1),
            ),
            child: SingleChildScrollView(
              child: Wrap(
                children: List.generate(
                  cubit.num,
                  (index) => Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 40,
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
        ],
      ),
      SizedBox(height: height * 5 / 100),
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
            'SUBMIT',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
      SizedBox(height: height * 5 / 100),
    ],
  );
}

Widget appointList({
  required String num,
  required String label,
}) {
  return Column(
    children: [
      FloatingActionButton(
        elevation: 0,
        mini: true,
        backgroundColor: Color(0xffDADADA),
        onPressed: () {},
        child: Text(
          '$num',
          style: TextStyle(
            fontSize: 10.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black.withOpacity(50 / 100),
          ),
        ),
      ),
      // SizedBox(height: .01.sh),

      Text(
        '$label',
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 10.sp,
        ),
      ),
    ],
  );
}

Widget richText({
  required String firstText,
  required String secondText,
  FontWeight? firstWeight = FontWeight.bold,
  FontWeight? secodWeight = FontWeight.bold,
  double fontSize = 33,
  required Color textColor,
  required Color sectextColor,
}) {
  return RichText(
    text: TextSpan(
      children: [
        TextSpan(
          text: '$firstText',
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: textColor,
            fontWeight: firstWeight,
            fontSize: fontSize,
          ),
        ),
        TextSpan(
          text: '$secondText',
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: sectextColor,
            fontWeight: secodWeight,
            fontSize: fontSize,
          ),
        ),
      ],
    ),
  );
}

Widget List_appoint({
  required String? one,
  required String? two,
  required String? three,
  required String? four,
  required String? five,
  required Color color,
  FontWeight weight = FontWeight.w600,
  required double width,
}) {
  return Container(
    padding: EdgeInsets.all(10),
    child: Row(
      children: [
        Container(
          width: width < 800 ? 70 : 100,
          child: Text(
            "$one",
            style: TextStyle(
                color: Colors.black,
                fontWeight: weight,
                fontSize: width < 800 ? 10 : 12),
          ),
        ),
        Spacer(),
        Container(
          width: width < 800 ? 70 : 100,
          child: Text(
            "$two",
            style: TextStyle(
                color: Colors.black,
                fontWeight: weight,
                fontSize: width < 800 ? 10 : 12),
          ),
        ),
        Spacer(),
        Container(
          width: width < 800 ? 70 : 100,
          child: Text(
            "$three",
            style: TextStyle(
                color: Colors.black,
                fontWeight: weight,
                fontSize: width < 800 ? 10 : 12),
          ),
        ),
        Spacer(),
        Container(
          width: width < 800 ? 70 : 100,
          child: Text(
            "$four",
            style: TextStyle(
                color: Colors.black,
                fontWeight: weight,
                fontSize: width < 800 ? 10 : 12),
          ),
        ),
        Spacer(),
        width < 800
            ? Text(
                "$five",
                style: TextStyle(
                    color: color,
                    fontWeight: weight,
                    fontSize: width < 800 ? 10 : 12),
              )
            : Container(
                width: 100,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(
                  "$five",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: weight,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
      ],
    ),
  );
}

Widget todey_appoint({
  required String one,
  required String two,
}) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 100,
          child: Image(
            image: AssetImage("assets/image/dashbord/myprofile2.png"),
            width: 50,
            height: 50,
            fit: BoxFit.contain,
          ),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Patient Name",
                style: TextStyle(
                  color: Color(0xff1773FA),
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "$one",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 100,
          child: Text(
            "$two",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
              color: Color(0xff23B59C),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget request_appoint({
  required double width,
  required String one,
  required String two,
  required String three,
}) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    elevation: 5,
    child: Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xffF1F1FF),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
      ),
      child: Wrap(
        spacing: 50,
        runSpacing: 50,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Patient Name",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        CupertinoIcons.clock_fill,
                        color: MyColors.cPrimary,
                      ),
                      SizedBox(width: 3),
                      Text(
                        "$two",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image(
                      image: AssetImage("assets/Image/dashbord/yes.png"),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "$one",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        CupertinoIcons.calendar_today,
                        color: MyColors.cPrimary,
                      ),
                      SizedBox(width: 3),
                      Text(
                        "$three",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image(
                      image: AssetImage("assets/Image/dashbord/no.png"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget formfield({
  required String text,
  TextEditingController? controller,
  required double margin,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        // margin: EdgeInsets.only(left: .02.sw),
        margin: EdgeInsets.only(left: margin),
        child: TextPage(
            text: '$text',
            fontSize: 11.sp,
            weight: FontWeight.w600,
            color: Colors.black),
      ),
      Container(
        width: 350,
        child: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(70),
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'this form must not be Empty';
            }
            return null;
          },
          controller: controller,
        ),
      ),
    ],
  );
}

Widget authFormfield({
  required String text,
  Color textColor = Colors.black,
  double textSize = 11,
  TextEditingController? controller,
  required double margin,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        // margin: EdgeInsets.only(left: .02.sw),
        margin: EdgeInsets.only(left: margin),
        child: TextPage(
            text: '$text',
            fontSize: textSize.sp,
            weight: FontWeight.w600,
            color: textColor),
      ),
      Container(
        width: 350,
        child: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(70),
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'this Field must not be Empty';
            }
            return null;
          },
          controller: controller,
        ),
      ),
    ],
  );
}

Widget tFormfield({
  required String text,
  Color textColor = Colors.black,
  double textSize = 14,
  TextEditingController? controller,
  double width = 350,
  required double margin,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        // margin: EdgeInsets.only(left: .02.sw),
        margin: EdgeInsets.only(left: margin),
        child: TextPage(
            text: '$text',
            fontSize: textSize,
            weight: FontWeight.w600,
            color: MyColors.cPrimary),
      ),
      SizedBox(height: .01.sh),
      Container(
        width: width,
        child: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(70),
            ),
            fillColor: Colors.white,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(
                color: MyColors.cPrimary,
                width: 2.0,
              ),
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'this Field must not be Empty';
            }
            return null;
          },
          controller: controller,
        ),
      ),
    ],
  );
}

Widget drugfield({
  required String text,
  Color textColor = Colors.black,
  double textSize = 18,
  double width = 250,
  required double margin,
  TextEditingController? controller,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: EdgeInsets.only(left: margin),
        child: TextPage(
            text: '$text',
            fontSize: textSize,
            weight: FontWeight.w600,
            color: MyColors.cPrimary),
      ),
      SizedBox(height: .01.sh),
      Container(
        width: width,
        child: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(70),
            ),
            fillColor: Colors.white,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(
                color: MyColors.cPrimary,
                width: 2.0,
              ),
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'this Field must not be Empty';
            }
            return null;
          },
          controller: controller,
        ),
      ),
    ],
  );
}

Widget stock({
  double width = 350,
  required String text,
  TextEditingController? controller,
}) {
  return Container(
    width: width,
    child: TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(70),
        ),
        hintText: "$text",
        fillColor: Colors.white,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: MyColors.cPrimary,
            width: 2.0,
          ),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'this Field must not be Empty';
        }
        return null;
      },
      controller: controller,
    ),
  );
}

Widget globalTFormfield({
  TextEditingController? controller,
  double width = 350,
  String hintText = "",
  TextStyle? hintStyle,
}) {
  return Container(
    width: width,
    child: TextFormField(
      decoration: InputDecoration(
        hintText: "$hintText",
        hintStyle: hintStyle,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        fillColor: Colors.white,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: MyColors.cPrimary,
            width: 1.0,
          ),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'this Field must not be Empty';
        }
        return null;
      },
      controller: controller,
    ),
  );
}

Widget buttonClicked({
  required String text,
  required void Function()? Pressed,
  // double height: .08,
  required double height,
  double width: 150,
  int fontSize: 17,
  FontWeight weight: FontWeight.w700,
}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: MyColors.cPrimary,
      borderRadius: BorderRadius.circular(97.r),
    ),
    child: TextButton(
      onPressed: Pressed,
      child: TextPage(
        text: '$text',
        fontSize: fontSize.sp,
        weight: weight,
      ),
    ),
  );
}

Widget aroundBorderButtonClicked({
  required String text,
  required void Function()? Pressed,
  required double height,
}) {
  return Container(
    width: 150,
    // height: .08.sh,
    height: height,
    decoration: BoxDecoration(
      border: Border.all(color: MyColors.cPrimary, width: 1),
      borderRadius: BorderRadius.circular(97),
    ),
    child: TextButton(
      onPressed: Pressed,
      child: TextPage(
        text: '$text',
        color: MyColors.cPrimary,
        fontSize: 17,
        weight: FontWeight.w700,
      ),
    ),
  );
}

Widget footInfo({
  required String image,
  required String text,
  double textSize: 19,
  required double spacing,
}) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Image(
        image: AssetImage('$image'),
      ),
      // SizedBox(width: .01.sw),
      SizedBox(width: spacing),
      TextPage(
        text: '$text',
        fontSize: textSize.sp,
        color: Color(0xff1773FA),
        weight: FontWeight.w600,
      ),
    ],
  );
}

Widget rich_4Text({
  required String firstText,
  required String secondText,
  required String thirdText,
  required String fourthText,
  required String fifthText,
}) {
  return RichText(
    text: TextSpan(
      children: [
        TextSpan(
          text: '$firstText',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 15.sp,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        TextSpan(
          text: '$secondText',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 15.sp,
            fontWeight: FontWeight.w600,
            color: Color(0xff1773FA),
          ),
        ),
        TextSpan(
          text: '$thirdText',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 15.sp,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        TextSpan(
          text: '$fourthText',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 15.sp,
            fontWeight: FontWeight.w600,
            color: Color(0xff1773FA),
          ),
        ),
        TextSpan(
          text: '$fifthText',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 15.sp,
            fontWeight: FontWeight.w600,
            color: Color(0xff1773FA),
          ),
        ),
      ],
    ),
  );
}

Widget logIn({
  required String text,
  double width: 120,
  // double height: .08,
  required double height,
  required void Function()? Pressed,
}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(97.r),
      border: Border.all(color: Color(0xff1773FA), width: 1),
    ),
    child: TextButton(
      onPressed: Pressed,
      child: TextPage(
        text: '$text',
        fontFamily: 'Montserrat',
        fontSize: 13,
        color: Color(0xff1773FA),
        weight: FontWeight.w700,
      ),
    ),
  );
}

Widget signUp({
  required String text,
  double width: 120,
  // double height: .08,
  required double height,
  required void Function()? Pressed,
}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: Color(0xff1773FA),
      borderRadius: BorderRadius.circular(97.r),
    ),
    child: TextButton(
      onPressed: Pressed,
      child: Text(
        '$text',
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 13,
            fontWeight: FontWeight.w700,
            color: Colors.white),
      ),
    ),
  );
}

void navigateTo(context, Widget) => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Widget),
    );

Widget colorc({
  required Color color,
}) {
  return Container(
    width: 100,
    height: 100,
    color: color,
  );
}

Widget medicalDep({
  required String image,
  required String text,
  required double spacing,
}) {
  return Container(
    width: 200,
    height: 200,
    child: Card(
      color: MyColors.cPrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(
              '$image',
            ),
            width: 70,
            height: 70,
          ),
          // SizedBox(height: .01.sh),
          SizedBox(height: spacing),
          Text(
            '$text',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              letterSpacing: 1,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget doctors({
  required String image,
  required String doctorName,
  required double spacing,
}) {
  return GestureDetector(
    child: Container(
      width: 250,
      height: 250,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Image(
              image: AssetImage(
                '$image',
              ),
              width: 100,
              height: 100,
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: MyColors.cPrimary,
              ),
              child: Column(
                children: [
                  Text(
                    "$doctorName",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  // SizedBox(height: .01.sh),
                  SizedBox(height: spacing),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white.withOpacity(30 / 100),
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget patient() {
  return GestureDetector(
    onTap: () {},
    child: Container(
      width: 200,
      height: 200,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Image(
              image: AssetImage(
                'assets/image/dashbord/my_profile3.png',
              ),
              width: 100,
              height: 100,
            ),
            Spacer(),
            Container(
              width: 200,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: MyColors.cPrimary,
              ),
              child: Column(
                children: [
                  Text(
                    "Patient Name",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'View Profile',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xffFFFFFF).withOpacity(63 / 100),
                      color: Colors.white.withOpacity(30 / 100),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget diagnosis_text({
  required String text1,
  required String text2,
}) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$text1",
            style: TextStyle(
              color: Color(0xff23B59C),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "$text2",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    ],
  );
}

Widget Documents_item({
  required String image,
  required String text,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: Color(0xff3CA9DD).withOpacity(48 / 100),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Image(
          image: AssetImage("$image"),
        ),
      ),
      Container(
        width: 100,
        child: Text(
          "$text",
          style: TextStyle(
            color: Color(0xff7A7A7A),
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(
          IconlyLight.download,
          color: Color(0xff7A7A7A),
        ),
      ),
    ],
  );
}

Widget patient_information({
  required String text1,
  required String text2,
}) {
  return Row(
    children: [
      Text(
        "$text1",
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
        ),
      ),
      Spacer(),
      Text(
        "$text2",
        style: TextStyle(
          fontSize: 15,
          color: Color(0xff333333).withOpacity(50 / 100),
          fontWeight: FontWeight.w400,
        ),
      ),
    ],
  );
}

Widget diagnosis_item({
  required String image,
  required String text,
}) {
  return Row(
    children: [
      Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Color(0xff3CA3DD),
        ),
        child: Image(
          image: AssetImage("$image"),
        ),
      ),
      SizedBox(width: 10),
      Text(
        "$text",
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}

Widget Card_Patienpro({
  required Color color,
  required String image,
  required String label,
  required String rate,
}) {
  return Container(
    width: 120,
    height: 180,
    child: Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                color: color.withOpacity(10 / 100),
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.all(10),
              child: Image(
                image: AssetImage("$image"),
              ),
            ),
            Text(
              "$label",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 10,
                color: Color(0xff5A5881),
              ),
            ),
            Text(
              "$rate",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget header({
  String? image,
  String? text,
  required double widthImage,
  required double heightImage,
}) {
  return Container(
    child: Stack(
      alignment: Alignment.center,
      children: [
        Container(
          child: Image(
            image: AssetImage('$image'),
            width: widthImage,
            height: heightImage,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          color: Color(0xff1E90FF).withOpacity(10 / 100),
          width: widthImage,
          height: heightImage,
        ),
        Text(
          '$text',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 50.sp,
              color: Colors.white,
              fontWeight: FontWeight.w900),
        ),
      ],
    ),
  );
}

Widget footer({
  required double width,
  required double height,
}) {
  return Container(
    width: width,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xffA1C9CA).withOpacity(25 / 100),
          blurRadius: 30,
        ),
      ],
    ),
    child: Column(
      children: [
        Image(
          image: AssetImage('assets/image/logo/app.png'),
          width: 150,
          height: height * 20 / 100,
        ),
        SizedBox(
          height: height * 10 / 100,
        ),
        Container(
          margin: EdgeInsets.only(
            bottom: height * 10 / 100,
          ),
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Wrap(
            spacing: width <= 1400 ? width * 1 / 100 : width * 3 / 100,
            runSpacing: height * 10 / 100,
            alignment: WrapAlignment.center,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    footInfo(
                      image: 'assets/image/fIcon/phone.png',
                      spacing: width * 1 / 100,
                      text: 'Fax: 0226300039',
                    ),
                    SizedBox(
                      height: height * 2 / 100,
                    ),
                    footInfo(
                      image: 'assets/image/fIcon/email.png',
                      text: 'info@sha.edu.eg',
                      spacing: width * 1 / 100,
                    ),
                    SizedBox(
                      height: height * 2 / 100,
                    ),
                    footInfo(
                      image: 'assets/image/fIcon/location.png',
                      text:
                          'Al-Nakhil Suburb - Al-Shorouk City - Suez Road - Cairo',
                      textSize: width < 700 ? 13 : 19,
                      spacing: width * 1 / 100,
                    ),
                    SizedBox(
                      height: height * 2 / 100,
                    ),
                    footInfo(
                      image: 'assets/image/fIcon/facebook.png',
                      text: '@ElshoroukAcd ',
                      spacing: width * 1 / 100,
                    ),
                  ],
                ),
              ),
              Container(
                width: 500,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image(
                    image: AssetImage('assets/image/main/map.png'),
                    fit: BoxFit.cover,

                    // height: 400,
                    // width: 400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget fillName_Date({
  required double width,
  required double height,
  required AppCubit cubit,
  required String image,
}) {
  return Container(
    width: width < 1000 ? 600 : width * 60 / 100,
    margin: EdgeInsets.symmetric(horizontal: width * 1 / 100),
    padding: EdgeInsetsDirectional.only(
        top: height * 5 / 100,
        bottom: height * 5 / 100,
        start: width * 5 / 100,
        end: width * 15 / 100),
    decoration: BoxDecoration(
      color: Color(0xffE7F1F1),
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(70),
        bottomLeft: Radius.circular(70),
      ),
    ),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: width * 2 / 100, vertical: width * 3 / 100),
        child: Row(
          children: [
            Image(
              image: AssetImage('$image'),
              width: 70,
              height: 80,
            ),
            SizedBox(width: 50),
            Column(
              children: [
                Container(
                  width: 200,
                  child: TextFormField(
                    decoration: cubit.deleteCliced
                        ? InputDecoration(
                            hintText: 'File Name',
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          )
                        : InputDecoration(
                            hintText: cubit.cliced ? " " : 'File Name',
                            border: cubit.cliced
                                ? OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        BorderSide(color: MyColors.cPrimary),
                                  )
                                : InputBorder.none,
                            hintStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                    enabled: cubit.cliced,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 200,
                  child: TextFormField(
                    decoration: cubit.deleteCliced
                        ? InputDecoration(
                            hintText: 'File Date',
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff1773FA),
                            ),
                          )
                        : InputDecoration(
                            hintText: cubit.cliced ? " " : 'File Date',
                            border: cubit.cliced
                                ? OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        BorderSide(color: MyColors.cPrimary),
                                  )
                                : InputBorder.none,
                            hintStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff1773FA),
                            ),
                          ),
                    enabled: cubit.cliced,
                  ),
                ),
              ],
            ),
            Spacer(),
            Column(
              children: [
                FloatingActionButton(
                  elevation: 0,
                  backgroundColor: Colors.white,
                  mini: true,
                  onPressed: () {
                    cubit.editingText();
                    cubit.deleteCliced = false;
                  },
                  child: Image(
                    image: AssetImage(
                      'image/main/edit.png',
                    ),
                    width: 30,
                  ),
                ),
                SizedBox(height: 20),
                FloatingActionButton(
                  elevation: 0,
                  backgroundColor: Colors.white,
                  mini: true,
                  onPressed: () {
                    cubit.deleteText();
                    cubit.deleteCliced = true;
                  },
                  child: Image(
                    image: AssetImage('image/main/delete.png'),
                    width: 30,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget sharedAppBar({
  required double width,
  required double height,
  required AppCubit cubit,
  required void Function()? singpressed(),
  required void Function()? logpressed(),
  required BuildContext context,
}) {
  return Container(
    width: width,
    margin: EdgeInsets.symmetric(vertical: height * 1 / 100, horizontal: 10),
    child: Wrap(
      verticalDirection: VerticalDirection.up,
      alignment: WrapAlignment.end,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () {
                navigateTo(context, HomeLayout());
              },
              child: Container(
                child: Image.asset(
                  'assets/image/logo/bar.png',
                  width: width < 600 ? 0 : width * 14 / 100,
                ),
              ),
            ),
            Spacer(),
            Center(
              child: Container(
                height: 50,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: cubit.buttonsTitleList.length,
                  separatorBuilder: (context, index) => Container(),
                  itemBuilder: (context, index) => AppBarTextButton(
                    text: cubit.buttonsTitleList[index].title,
                    select: cubit.buttonsTitleList[index].isSelected,
                    onPressed: () {
                      cubit.changeIndexOfHome(index);
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            signUp(height: 50, text: 'SIGN UP', Pressed: logpressed),
            SizedBox(width: width * 1 / 100),
            logIn(height: 50, text: 'LOG IN', Pressed: singpressed),
          ],
        ),
      ],
    ),
  );
}

// s
Widget sharedAppBarTwo({
  required double width,
  required double height,
  required AppCubit cubit,
  required void Function()? singpressed(),
  required void Function()? logpressed(),
  required BuildContext context,
}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10),
    padding: EdgeInsets.symmetric(horizontal: width * 2 / 100),
    child: Row(
      children: [
        GestureDetector(
          onTap: () {
            navigateTo(context, HomeLayout());
          },
          child: Container(
            child: Image.asset(
              'assets/image/logo/bar.png',
              width: width < 600 ? 0 : width * 14 / 100,
            ),
          ),
        ),
        Spacer(),
        Center(
          child: Container(
            height: 50,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: cubit.buttonsTitleList.length,
              separatorBuilder: (context, index) => Container(),
              itemBuilder: (context, index) => AppBarTextButton(
                text: cubit.buttonsTitleList[index].title,
                select: cubit.buttonsTitleList[index].isSelected,
                onPressed: () {
                  cubit.changeIndexOfHome(index);
                },
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            signUp(height: 50, text: 'SIGN UP', Pressed: logpressed),
            SizedBox(width: width * 1 / 100),
            logIn(height: 50, text: 'LOG IN', Pressed: singpressed),
          ],
        ),
      ],
    ),
  );
}

Widget sharedAppBar_profile({
  required double width,
  required double height,
  required AppCubit cubit,
  required void Function()? singpressed(),
  required void Function()? logpressed(),
}) {
  return Container(
    width: width,
    margin: EdgeInsets.symmetric(vertical: height * 1 / 100, horizontal: 10),
    child: Wrap(
      verticalDirection: VerticalDirection.up,
      alignment: WrapAlignment.end,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: Image.asset(
                'assets/image/logo/bar.png',
                width: width < 600 ? 0 : width * 14 / 100,
              ),
            ),
            Spacer(),
            Center(
              child: Container(
                height: 50,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: cubit.TitleList.length,
                  separatorBuilder: (context, index) => Container(),
                  itemBuilder: (context, index) => AppBarTextButton(
                    text: cubit.TitleList[index].title,
                    select: cubit.TitleList[index].isSelected,
                    onPressed: () {
                      cubit.showIndexOfHome(index);
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            signUp(height: 50, text: 'SIGN UP', Pressed: logpressed),
            SizedBox(width: width * 1 / 100),
            logIn(height: 50, text: 'LOG IN', Pressed: singpressed),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: MyColors.cPrimary,
                size: 28,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget sharedAppBar_profileTwo({
  required double width,
  required double height,
  required AppCubit cubit,
  required void Function()? singpressed(),
  required void Function()? logpressed(),
}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10),
    child: Row(
      children: [
        Image.asset(
          'assets/image/logo/bar.png',
          width: width < 800 ? 0 : width * 12 / 100,
        ),
        Spacer(),
        Center(
          child: Container(
            height: 50,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: cubit.TitleList.length,
              separatorBuilder: (context, index) => Container(),
              itemBuilder: (context, index) => AppBarTextButton(
                text: cubit.TitleList[index].title,
                select: cubit.TitleList[index].isSelected,
                onPressed: () {
                  cubit.showIndexOfHome(index);
                },
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            signUp(height: 50, text: 'SIGN UP', Pressed: logpressed),
            SizedBox(width: width * 1 / 100),
            logIn(height: 50, text: 'LOG IN', Pressed: singpressed),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: MyColors.cPrimary,
                size: 28,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget menuButton({
  required String buttonText,
  required void Function()? onpressed(),
}) {
  return Container(
    width: 350,
    padding: EdgeInsets.symmetric(
      horizontal: 30,
      vertical: 10,
    ),
    decoration: BoxDecoration(
      color: Color(0xffF1F1FF).withOpacity(.8),
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: MyColors.cPrimary,
        width: 1,
      ),
    ),
    child: TextButton(
      onPressed: onpressed,
      child: Text(
        "$buttonText",
        style: TextStyle(
          color: MyColors.cPrimary,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}

Widget dropList() {
  return Container(
    height: 20,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(5),
    ),
    child: DropdownButton(
      icon: Icon(Icons.keyboard_arrow_down_sharp),
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
  );
}

Widget totleDrop({
  required String label,
  required String value,
  required String item,
  double width = 200,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "$label",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10),
      Container(
        width: width,
        height: 40,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xffA3C9D6),
          borderRadius: BorderRadius.circular(5),
        ),
        child: DropdownButton(
          value: '$value',
          style: TextStyle(
            color: MyColors.cPrimary,
            fontSize: 15,
          ),
          icon: Icon(Icons.keyboard_arrow_down_sharp),
          isExpanded: true,
          underline: SizedBox(),
          items: [
            '$item',
          ]
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
  );
}

Widget totalTabel({
  required double width,
  required String head,
  required String firstEle,
  required String scondeEle,
  required String thirdEle,
}) {
  return Column(
    children: [
      Container(
        width: width,
        height: 40,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: MyColors.cPrimary,
          borderRadius: BorderRadius.circular(3),
        ),
        child: Text(
          '$head',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              letterSpacing: 2,
              fontSize: 13),
          textAlign: TextAlign.center,
        ),
      ),
      SizedBox(height: 20),
      Container(
        width: width,
        height: 40,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xffA3C9D6),
          borderRadius: BorderRadius.circular(3),
        ),
        child: Text(
          '$firstEle',
          style: TextStyle(
              color: MyColors.cPrimary,
              fontSize: 15,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
      SizedBox(height: 20),
      Container(
        width: width,
        height: 40,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xffA3C9D6),
          borderRadius: BorderRadius.circular(3),
        ),
        child: Text(
          '$scondeEle',
          style: TextStyle(
              color: MyColors.cPrimary,
              fontSize: 15,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
      SizedBox(height: 20),
      Container(
        width: width,
        height: 40,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xffA3C9D6),
          borderRadius: BorderRadius.circular(3),
        ),
        child: Text(
          '$thirdEle',
          style: TextStyle(
              color: MyColors.cPrimary,
              fontSize: 15,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    ],
  );
}

Widget searchPatientField({
  required String hintText,
}) {
  return Container(
    width: 350,
    padding: EdgeInsets.all(10),
    child: TextFormField(
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: '$hintText',
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 15,
        ),
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
          borderSide: BorderSide(
            color: Color(0xff),
          ),
        ),
      ),
    ),
  );
}

Widget cardPatientSearch({
  required double width,
  required double height,
  required String patientName,
  required String lastAppoinment,
}) {
  return Container(
    width: width,
    child: Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: width <= 1000 ? width * 12 / 100 : width * 9 / 100,
          runSpacing: height * 5 / 100,
          children: [
            Container(
              child: Image(
                image: AssetImage('image/main/personal.png'),
              ),
            ),
            Container(
              width: width <= 900 ? double.infinity : 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Patient Name',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(height: width * 3 / 100),
                  Text(
                    '$patientName',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff4F96BE),
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: width <= 900 ? double.infinity : 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Last appoitment',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(height: width * 3 / 100),
                  Text(
                    '$lastAppoinment',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff4F96BE),
                      fontSize: 17.sp,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // width: 170,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xff4F96BE),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'View Sheet',
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget treatDrop({
  double contWidth = 100,
  double contheight = 30,
  Color dropColor = MyColors.cPrimary,
  double dropWidth = 300,
  double dropheight = 30,
  BoxBorder? border,
}) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: contWidth,
        height: contheight,
        decoration: BoxDecoration(
            color: dropColor,
            borderRadius: BorderRadius.circular(2),
            border: border),
      ),
      SizedBox(width: 10),
      Container(
        height: dropheight,
        width: dropWidth,
        decoration: BoxDecoration(
          color: Color(0xffA3C9D6),
          borderRadius: BorderRadius.circular(2),
        ),
        child: DropdownButton(
          icon: Icon(
            Icons.keyboard_arrow_down_sharp,
            color: MyColors.cPrimary,
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
  );
}

Widget Dispence_info({
  required double width,
  required double height,
  required String up_text,
  required String down_text,
}) {
  return Container(
    width: 200,
    child: Column(
      children: [
        Text(
          '$up_text',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
            color: MyColors.cPrimary,
          ),
        ),
        SizedBox(height: 10),
        Text(
          '$down_text',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xff4F96BE),
            fontSize: 17,
          ),
        ),
      ],
    ),
  );
}

Widget req_info({
  required double width,
  required double height,
  required String up_text,
  required String down_text,
}) {
  return Container(
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '$up_text',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
            color: MyColors.cPrimary,
          ),
        ),
        SizedBox(height: width * 1 / 100),
        Text(
          '$down_text',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xff4F96BE),
            fontSize: 17,
          ),
        ),
      ],
    ),
  );
}

Widget commonButton({
  required String text,
  required Color buttonColor,
  required Color textColor,
  required Function Pressed,
  double textSize = 20,
  double width = 200,
  double height = 50,
  FontWeight fontWeight = FontWeight.w500,
}) {
  return Container(
    width: width,
    height: height,
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      color: buttonColor,
      borderRadius: BorderRadius.circular(10),
    ),
    child: TextButton(
      onPressed: Pressed(),
      child: Text(
        '$text',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: textSize,
          fontWeight: fontWeight,
          color: textColor,
        ),
      ),
    ),
  );
}

Widget req_Oinfo({
  required double width,
  required double height,
  required String up_text,
  required String down_text,
}) {
  return Container(
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '$up_text',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
            color: MyColors.cPrimary,
          ),
        ),
        SizedBox(height: width * 1 / 100),
        Text(
          '$down_text',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xffD8903C),
            fontSize: 17,
          ),
        ),
      ],
    ),
  );
}

Widget Drop({
  required String value,
  required String item,
  double width = 200,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 10),
      Container(
        width: width,
        height: 40,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xffA3C9D6),
          borderRadius: BorderRadius.circular(5),
        ),
        child: DropdownButton(
          value: '$value',
          style: TextStyle(
            color: MyColors.cPrimary,
            fontSize: 15,
          ),
          icon: Icon(Icons.keyboard_arrow_down_sharp),
          isExpanded: true,
          underline: SizedBox(),
          items: [
            '$item',
          ]
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
  );
}
