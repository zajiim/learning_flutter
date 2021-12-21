import 'package:flutter/material.dart';
import 'package:valuenotifier/db/functions/db_functions.dart';
import 'package:valuenotifier/model/data_model.dart';

class ListStudentWidget extends StatelessWidget {
  const ListStudentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: studentListNotifier,
      builder: (BuildContext context, List<StudentModel> studentList,
          Widget? child) {
        return ListView.separated(
          itemBuilder: (ctx, index) {
            final data = studentList[index];
            return ListTile(
              title: Text('Name: ${data.name}'),
              subtitle: Text('Age: ${data.age}'),
              trailing: IconButton(
                onPressed: () {
                  if (data.id != null) {
                    deleteStudent(data.id!);
                  } else {
                    print('Cant delete,');
                  }
                },
                icon: Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
              ),
            );
          },
          separatorBuilder: (ctx, index) {
            return const Divider();
          },
          itemCount: studentList.length,
        );
      },
    );
  }
}
