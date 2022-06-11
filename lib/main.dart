import 'package:flutter/material.dart';

import 'dart:async';

import 'package:rounded_loading_button/rounded_loading_button.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyButtonWidget(),
  ));
}

class MyButtonWidget extends StatefulWidget {
  const MyButtonWidget({Key? key}) : super(key: key);

  @override
  State<MyButtonWidget> createState() => _MyButtonWidgetState();
}

class _MyButtonWidgetState extends State<MyButtonWidget> {
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  void _doSomething() async {
    Timer(
      const Duration(seconds: 3),
      () => _btnController.success(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: RoundedLoadingButton(
        onPressed: _doSomething,
        controller: _btnController,
        child: const Text('Submit', style: TextStyle(color: Colors.white)),
      )),
    );
  }
}
