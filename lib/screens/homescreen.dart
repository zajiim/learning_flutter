import 'package:flutter/material.dart';
import 'package:valuenotifier/db/functions/db_functions.dart';
import 'package:valuenotifier/widgets/addstudent_widget.dart';
import 'package:valuenotifier/widgets/liststudent_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getAllStudents();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AddStudentWidget(),
            Expanded(
              child: ListStudentWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
