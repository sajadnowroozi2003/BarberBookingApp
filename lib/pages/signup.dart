import 'package:barbershope/constans.dart';
import 'package:barbershope/pages/login.dart';
import 'package:barbershope/services/auth_service.dart';
import 'package:email_validator/email_validator.dart';

import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'home.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String errorMessage = "";
  bool errorOccurred = false, showSpinner = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: SingleChildScrollView(
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
                    "CREATE YOUR\nACCOUNT",
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
                    key: _formkey,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            decoration: kTextFildDecoration.copyWith(
                                icon: Icon(
                                  Icons.person_outlined,
                                  size: 20,
                                  color: KoutlineBorderColor,
                                ),
                                hintText: 'Enter your Name',
                                labelText: 'Name',
                                labelStyle: TextStyle(color: KwhitColor)),
                            controller: _nameController,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            decoration: kTextFildDecoration.copyWith(
                                icon: Icon(
                                  Icons.email_outlined,
                                  size: 20,
                                  color: KoutlineBorderColor,
                                ),
                                hintText: 'Enter your email',
                                labelText: 'Email',
                                labelStyle: TextStyle(color: KwhitColor)),
                            controller: _emailController,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (email) {
                              return email != null &&
                                      EmailValidator.validate(email)
                                  ? null
                                  : 'please enter a vaild email';
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            decoration: kTextFildDecoration.copyWith(
                                icon: Icon(
                                  Icons.phone_outlined,
                                  size: 20,
                                  color: KoutlineBorderColor,
                                ),
                                hintText: 'Enter your Phone',
                                labelText: 'Phone',
                                labelStyle: TextStyle(color: KwhitColor)),
                            controller: _phoneController,
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
                                labelText: 'Password',
                                labelStyle: TextStyle(color: KwhitColor)),
                            obscureText: true,
                            controller: _passwordController,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (password) {
                              return password != null && password.length > 5
                                  ? null
                                  : 'The password be of 6 characters at least';
                            },
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Visibility(
                            visible: errorOccurred,
                            child: Center(
                              child: Text(
                                errorMessage,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          GestureDetector(
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 10.0),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                gradient: KlinearGradientColor,
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Center(
                                child: Text(
                                  "SIGN UP",
                                  style: TextStyle(
                                      color: KwhitColor,
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            onTap: () async {
                              //get email and passswrod
                              if (_formkey.currentState!.validate()) {
                                // register user

                                try {
                                  setState(() {
                                    errorOccurred = false;
                                    showSpinner = true;
                                  });

                                  await AuthService()
                                      .createUserWithEmailAndPassword(
                                          email: _emailController.text,
                                          password: _passwordController.text)
                                      .then(
                                    (value) {
                                      Navigator.pop(context);
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Home(),
                                        ),
                                      );
                                    },
                                  );
                                  setState(() {
                                    showSpinner = false;
                                  });
                                } catch (e) {
                                  print("Error is: ${e}");
                                  setState(() {
                                    showSpinner = false;
                                    errorOccurred = true;
                                    errorMessage = e.toString().split('] ')[1];
                                  });
                                }
                              }
                            },
                          ),
                          SizedBox(
                            height: 50.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Already have an account?",
                                style: TextStyle(
                                    color: KwhitColor,
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
                                  builder: (context) => LogIn(),
                                ),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Sign In",
                                  style: TextStyle(
                                      color: KwhitColor,
                                      decoration: TextDecoration.underline,
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
      ),
    );
  }
}
