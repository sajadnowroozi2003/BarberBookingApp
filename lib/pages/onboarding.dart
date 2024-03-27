import 'package:flutter/material.dart';

import 'home.dart';

class Onboearding extends StatefulWidget {
  const Onboearding({super.key});

  @override
  State<Onboearding> createState() => _OnboeardingState();
}

class _OnboeardingState extends State<Onboearding>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    controller?.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB0C5A4).withOpacity(controller!.value),
      body: Container(
          margin: EdgeInsets.only(top: 120.0),
          child: Column(
            children: [
              Image.asset("images/barber2.png"),
              Image.asset("images/barbertitle.png"),
              SizedBox(
                height: 60.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  );
                },
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  decoration: BoxDecoration(
                      color: Color(0xFFdf711a),
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    "Get a Stylish Haircut",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
