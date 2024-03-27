import 'package:barbershope/pages/signup.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

import '../constans.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(top: 70.0, left: 30.0),
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: KlinearGradientColor,
                ),
                child: Text(
                  "WELCOME\nAGAIN!",
                  style: TextStyle(
                      fontFamily: 'lobster',
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: 40.0, left: 30.0, right: 30.0, bottom: 30.0),
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 4),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: KbackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                child: Form(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        TextFormField(
                          decoration: kTextFildDecoration.copyWith(
                              icon: Icon(
                                Icons.email_outlined,
                                size: 20,
                                color: KoutlineBorderColor,
                              ),
                              hintText: 'Enter your email',
                              labelText: 'email',
                              labelStyle: TextStyle(color: KwhitColor)),
                          controller: _emailController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (email) {
                            return email != null &&
                                    EmailValidator.validate(email)
                                ? null
                                : 'please enter a vaild email';
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: kTextFildDecoration.copyWith(
                              icon: Icon(
                                Icons.password_outlined,
                                size: 20,
                                color: KoutlineBorderColor,
                              ),
                              hintText: 'Enter your password',
                              labelText: 'password',
                              labelStyle: TextStyle(color: KwhitColor)),
                          obscureText: true,
                          controller: _passwordController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (password) {
                            return password != null && password.length > 5
                                ? null
                                : 'The password be of 6 characters at least';
                          },
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Forgot password?",
                              style: TextStyle(
                                  color: Color(0xFFF8FAE5),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 60.0,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            gradient: KlinearGradientColor,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Center(
                            child: Text(
                              "SIGN IN",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "don't have account?",
                              style: TextStyle(
                                  color: Color(0xFFF8FAE5),
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUp(),
                              ),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Sign Up",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Color(0xFFF8FAE5),
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
