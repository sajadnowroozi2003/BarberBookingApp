import 'package:barbershope/pages/booking.dart';
import 'package:barbershope/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB0C5A4),
      body: Container(
        margin: EdgeInsets.only(left: 20.0, top: 50.0, right: 20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [],
              ),
              IconButton(
                onPressed: () {
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }
                  AuthService().signOut();
                },
                icon: Icon(Icons.logout),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Divider(
            color: Colors.white,
            height: 20,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Services",
            style: TextStyle(
                color: Color(0xFFF8FAE5),
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              Flexible(
                fit: FlexFit.tight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Booking(service: 'Classic Shaving'),
                      ),
                    );
                  },
                  child: Container(
                    height: 150.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFB19470),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "images/shaving.png",
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Classic Shaving",
                          style: TextStyle(
                              color: Color(0xFFF8FAE5),
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Flexible(
                fit: FlexFit.tight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Booking(service: 'Hair Washing'),
                      ),
                    );
                  },
                  child: Container(
                    height: 150.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFB19470),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "images/hair.png",
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Hair Washing",
                          style: TextStyle(
                              color: Color(0xFFF8FAE5),
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              Flexible(
                fit: FlexFit.tight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Booking(service: 'Hair Cutting'),
                      ),
                    );
                  },
                  child: Container(
                    height: 150.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFB19470),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "images/cutting.png",
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Hair Cutting",
                          style: TextStyle(
                              color: Color(0xFFF8FAE5),
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Flexible(
                fit: FlexFit.tight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Booking(service: 'Beard Trimming'),
                      ),
                    );
                  },
                  child: Container(
                    height: 150.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFB19470),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "images/beard.png",
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Beard Trimming",
                          style: TextStyle(
                              color: Color(0xFFF8FAE5),
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              Flexible(
                fit: FlexFit.tight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Booking(service: 'Facials'),
                      ),
                    );
                  },
                  child: Container(
                    height: 150.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFB19470),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "images/facials.png",
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Facials",
                          style: TextStyle(
                              color: Color(0xFFF8FAE5),
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Flexible(
                fit: FlexFit.tight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Booking(service: 'Kids HairCutting'),
                      ),
                    );
                  },
                  child: Container(
                    height: 150.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFB19470),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "images/kids.png",
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Kids HairCutting",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
