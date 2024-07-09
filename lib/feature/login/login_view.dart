import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key : key);

  @override
  State<LoginView> createState() => _LoginViewState();

}
class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: context.padding.low,
        child: Column(),
      ),
    );
  }
}