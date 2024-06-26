import 'package:flutter/material.dart';
import 'package:food_delivery/pages/login_pages.dart';
import 'package:food_delivery/pages/register_page.dart';


class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  //initially ,show login Page
  bool showLoginPage =true;

  //toggle b/w login and register page
  @override
  void togglePages() {
    // TODO: implement setState
    setState(() {
      showLoginPage=!showLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {

    if(showLoginPage){
      return LoginPage(onTap: togglePages);
    }
    else {
      return RegisterPage(onTap: togglePages);
    }

  }
}
