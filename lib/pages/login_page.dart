import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final nameController = TextEditingController();
  final cnicController = TextEditingController();
  List<String> dropdownGenderList = [
    'Male',
    'Female',
    'Other',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text(
                'Personal Information',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff8B010B),
                ),
              ),
              Text(
                'Personal Information',
                style: TextStyle(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff8B010B),
                ),
              ),
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  hintText: 'Type your name here',
                ),
                keyboardType: TextInputType.name,
              ),
              TextFormField(
                controller: cnicController,
                decoration: const InputDecoration(
                  hintText: 'Type 12345-12345-6',
                ),
                keyboardType: TextInputType.number,
              ),
              DropdownButton(
                items: dropdownGenderList
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        ))
                    .toList(),
                onChanged: (value) {},
              ),
              Checkbox(
                value: false,
                onChanged: (value) {},
              ),
              FilledButton(
                onPressed: () {},
                child: const Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
