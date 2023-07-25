import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final nameController = TextEditingController();
  final cnicController = TextEditingController();
  final passwordController = TextEditingController();
  bool passwordText = true;

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
                  prefixIcon: Icon(Icons.person),
                  hintText: 'Type your name here',
                ),
                keyboardType: TextInputType.name,
              ),
              TextFormField(
                controller: cnicController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.fingerprint),
                  hintText: 'Type 12345-12345-6',
                ),
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                controller: passwordController,
                obscureText: passwordText,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.key),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  hintText: '********',
                ),
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
                onPressed: () {
                  passwordText = !passwordText;
                  print('object fffffffffff $passwordText');
                  setState(() {});
                },
                child: const Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
