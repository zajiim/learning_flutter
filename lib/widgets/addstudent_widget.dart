import 'package:flutter/material.dart';
import 'package:valuenotifier/db/functions/db_functions.dart';
import 'package:valuenotifier/model/data_model.dart';

class AddStudentWidget extends StatelessWidget {
  AddStudentWidget({Key? key}) : super(key: key);

  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          TextFormField(
            controller: _nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Name',
            ),
          ),
          SizedBox(height: 10.0),
          TextFormField(
            controller: _ageController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Age',
            ),
          ),
          SizedBox(height: 10.0),
          ElevatedButton.icon(
            onPressed: () {
              onAddButtonClicked();
            },
            icon: Icon(Icons.add),
            label: Text('Add'),
          ),
        ],
      ),
    );
  }

  onAddButtonClicked() async {
    final _name = _nameController.text.trim();
    final _age = _ageController.text.trim();
    if (_name.isEmpty || _age.isEmpty) {
      return;
    }
    print('$_name $_age');
    final _student = StudentModel(name: _name, age: _age);
    addStudent(_student);
  }
}
