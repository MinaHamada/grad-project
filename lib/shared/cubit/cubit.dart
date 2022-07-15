import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:hmis_web/layout/dashbord_layout/dashbord.dart';
import 'package:hmis_web/layout/home_layout/home_layout.dart';
import 'package:hmis_web/shared/cubit/states.dart';

import '../../layout/doctor_layout/doctor_layout.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(HospitalAppInitialState());

  // ignore: type_annotate_public_apis
  static AppCubit get(context) => BlocProvider.of(context);

  ///
  final List<MyTextButtonBar> buttonsTitleList = [
    MyTextButtonBar('Home', true),
    MyTextButtonBar('Departments', false),
    MyTextButtonBar('Our Doctors', false),
    MyTextButtonBar('Medical History', false),
  ];
  int currentIndexOfHome = 0;

  Future<void> changeIndexOfHome(index) async {
    for (var category in buttonsTitleList) {
      category.isSelected = false;
    }
    currentIndexOfHome = index;
    buttonsTitleList[index].isSelected = true;
    emit(ChangeIndexOfAppBarHome());
  }

  final List<MyTextButtonBar> medicalTitleList = [
    MyTextButtonBar('Home', false),
    MyTextButtonBar('Departments', false),
    MyTextButtonBar('Our Doctors', false),
    MyTextButtonBar('Medical History', true),
  ];
  int currentIndexOfMedical = 3;

  Future<void> changeIndexOfMedical(index) async {
    for (var category in medicalTitleList) {
      category.isSelected = false;
    }
    currentIndexOfMedical = index;
    medicalTitleList[index].isSelected = true;
    emit(ChangeIndexOfAppBarMedical());
  }

  Object valOne = -1;
  void changeStateOne(Object num) {
    valOne = num;
    emit(ChangeStateActiveOne());
  }

  Object valTwo = -1;

  void changeStateTwo(Object num) {
    valTwo = num;
    emit(ChangeStateActiveTwo());
  }

  bool cliced = false;
  void editingText() {
    cliced = !cliced;
    emit(EditButtonClicked());
  }

  bool deleteCliced = true;
  void deleteText() {
    deleteCliced;
    emit(DeleteButtonClicked());
  }

  final List<MyTextButtonBar> TitleList = [
    MyTextButtonBar('Home', false),
    MyTextButtonBar('Departments', false),
    MyTextButtonBar('Our Doctors', false),
    MyTextButtonBar('Medical History', false),
  ];
  int IndexOfMedical = 0;

  Future<void> showIndexOfHome(index) async {
    for (var category in TitleList) {
      category.isSelected = false;
    }
    IndexOfMedical = index;
    TitleList[index].isSelected = true;
    emit(IndexOfAppBarHome());
  }

  final List<MyTextButton> patientTitleList = [
    MyTextButton('Today Sheet', true),
    MyTextButton('Pres.Data', false),
    MyTextButton('Treatment', false),
    MyTextButton('procedures', false),
    MyTextButton('FD', false),
    MyTextButton('request', false),
  ];
  int currentIndexOfPatient = 0;

  Future<void> changeIndexOfPatientSheet(index) async {
    for (var category in patientTitleList) {
      category.isSelected = false;
    }
    currentIndexOfPatient = index;
    patientTitleList[index].isSelected = true;
    emit(ChangeIndexOfAppBarHome());
  }

  Object valCash = -1;
  void changeStateRCash(Object num) {
    valCash = num;
    emit(ChangeRCashButton());
  }

  bool sele = false;
  void test() {
    sele = !sele;
    emit(checkeBoxSelected());
  }

  int num = 5;
  void increaselength() {
    num = num + 1;
    emit(IncreaseLength());
  }

  final List<DashIconButtonBar> iconList = [
    DashIconButtonBar(IconlyBold.home, true),
    DashIconButtonBar(IconlyBold.calendar, false),
    DashIconButtonBar(IconlyBold.profile, false),
    DashIconButtonBar(CupertinoIcons.money_dollar, false),
  ];
  int indexofIcon = 0;
  Future<void> showIndexOfDashbordIcon(index) async {
    for (var category in iconList) {
      category.isSelected = false;
    }
    indexofIcon = index;
    iconList[index].isSelected = true;
    emit(IndexOfDashIcon());
  }

  int cardnum = 4;
  void increaselengthpatient() {
    cardnum = cardnum + 1;
    emit(IncreasePatientLength());
  }

  String? newValue;
  String dropdownValue = 'Merch';
  void drop(String value) {
    dropdownValue = value;
    emit(dropState());
  }
}
