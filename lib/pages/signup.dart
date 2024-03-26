import 'package:barbershope/pages/login.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFFA7070),
                      Color(0xFFC6EBC5),
                    ],
                  ),
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
                  color: Color(0xFFB0C5A4),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: TextStyle(
                            color: Color(0xFFF8FAE5),
                            fontSize: 23.0,
                            fontWeight: FontWeight.w500),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Name",
                            prefixIcon: Icon(Icons.person_outline)),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Text(
                        "Email",
                        style: TextStyle(
                            color: Color(0xFFF8FAE5),
                            fontSize: 23.0,
                            fontWeight: FontWeight.w500),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Email",
                            prefixIcon: Icon(Icons.email_outlined)),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Text(
                        "Phone",
                        style: TextStyle(
                            color: Color(0xFFF8FAE5),
                            fontSize: 23.0,
                            fontWeight: FontWeight.w500),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Phone",
                            prefixIcon: Icon(Icons.phone_android_outlined)),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Text(
                        "Password",
                        style: TextStyle(
                            color: Color(0xFFF8FAE5),
                            fontSize: 23.0,
                            fontWeight: FontWeight.w500),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Password",
                            prefixIcon: Icon(Icons.password_outlined)),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFFA7070),
                              Color(0xFFC6EBC5),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Center(
                          child: Text(
                            "SIGN UP",
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
                            "Already have an account?",
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
                                  color: Color(0xFFF8FAE5),
                                  decoration: TextDecoration.underline,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
