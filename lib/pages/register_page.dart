import 'package:flutter/material.dart';
import 'package:food_delivery/services/auth/auth_service.dart';

import '../components/my_button.dart';
import '../components/my_text_field.dart';

class RegisterPage extends StatefulWidget {

  final void Function()? onTap;
  const RegisterPage({super.key,required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //text editing controllers
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  //register method
  void register()async {
    //get auth service
    final _authService = AuthService();


    //check if passwords match ->create user
    if (passwordController.text == confirmPasswordController.text) {
      //try creating user

      try {
        await _authService.signInWithEmailPassword(emailController.text,
          passwordController.text,
        );
      }
      //display any errors
      catch (e) {
        showDialog(
          context: context,
          builder: (context) =>
              AlertDialog(
                title: Text(e.toString()),
              ),
        );
      }
    }
    //if passwords don't match ->show error
    else{
    showDialog(context: context,
      builder: (context) =>
          const AlertDialog(
            title: Text("Password Don't Match!"),
          ),
    );
  }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Theme
          .of(context)
          .colorScheme
          .background,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme
                  .of(context)
                  .colorScheme
                  .inversePrimary,
            ),
            const SizedBox(height: 25),
            //message,app slogan
            Text(
              "Let's create an Account!",
              style: TextStyle(
                fontSize: 16,
                color: Theme
                    .of(context)
                    .colorScheme
                    .inversePrimary,
              ),
            ),
            const SizedBox(height: 25),
            //email textfield
            MyTextField(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
            ),
            const SizedBox(height: 25),
            //password textfield
            MyTextField(
              controller: passwordController,
              hintText: "Password",
              obscureText: true,
            ),
            const SizedBox(height: 25),
            //password textfield
            MyTextField(
              controller: confirmPasswordController,
              hintText: "Confirm Password",
              obscureText: true,
            ),
            const SizedBox(height: 25),
            //sign up button
            MyButton(
              text: "Sign Up",
              onTop: () {},
            ),
            const SizedBox(height: 25),
            //not a member? register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an Account?",
                  style: TextStyle(
                      color: Theme
                          .of(context)
                          .colorScheme
                          .inversePrimary),
                ),
                const SizedBox(height: 25),
                GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      "Login Now",
                      style: TextStyle(
                        color: Theme
                            .of(context)
                            .colorScheme
                            .inversePrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}