import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hmis_web/shared/styels/colors.dart';

class test extends StatelessWidget {
  const test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldState,
      drawer: Drawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            icon: Icon(Icons.menu, color: Colors.blue, size: 15),
            onPressed: () {
              _scaffoldState.currentState?.openDrawer();
            },
          ),
        ],
      ),
    );
  }
}
