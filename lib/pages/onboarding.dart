import 'package:barbershope/constans.dart';
import 'package:barbershope/pages/booking.dart';
import 'package:barbershope/pages/servise_list.dart';

import 'package:flutter/material.dart';

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
      duration: const Duration(seconds: 3),
    );
    controller?.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KbackgroundColor,
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
                      builder: (context) => ServiceList(),
                    ),
                  );
                },
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 6),
                        ),
                      ],
                      color: KbuttonColor,
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
