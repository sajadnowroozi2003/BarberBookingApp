import 'package:barbershope/constans.dart';
import 'package:barbershope/pages/booking.dart';
import 'package:flutter/material.dart';

import '../services/auth_service.dart';
import 'login.dart';

void main() {
  runApp(ServiceList());

}



class ServiceList extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    final String? userName  =  ModalRoute.of(context)!.settings.arguments as String?;
    return Scaffold(
      backgroundColor: KbackgroundColor,
      appBar: AppBar(
        backgroundColor: KbackgroundColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "barber",
                  style: TextStyle(
                      color: KwhitColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "      Booking",
                  style: TextStyle(
                      color: KoutlineBorderColor,
                      fontSize: 25,

                      fontFamily: "lobster",
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text("$userName"),
            IconButton(
              onPressed: () {
                if (Navigator.canPop(context)) {
                  Navigator.pop(context);
                  AuthService().signOut();
                }

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LogIn(),
                  ),
                );
              },
              icon: Icon(Icons.logout),
            ),
            IconButton(onPressed: (){print("Your name is : $userName");}, icon: Icon(Icons.person),),
          ],
        ),
      ),
      body: ScrollableCards(),
    );
  }
}

class ScrollableCards extends StatefulWidget {
  @override
  _ScrollableCardsState createState() => _ScrollableCardsState();
}

class _ScrollableCardsState extends State<ScrollableCards> {
  final List<Map<String, dynamic>> cards = [
    {
      'image': 'images/shaving.png',
      'text': 'Classic Shaving',
      'color': KcardColor
    },
    {
      'image': 'images/hair.png',
      'text': 'Hair Washing',
      'color': KcardColor,
    },
    {
      'image': 'images/cutting.png',
      'text': 'Hair Cutting',
      'color': KcardColor
    },
    {
      'image': 'images/beard.png',
      'text': 'Beard Trimming',
      'color': KcardColor,
    },
    {
      'image': 'images/facials.png',
      'text': 'Facials',
      'color': KcardColor,
    },
    {
      'image': 'images/kids.png',
      'text': 'Kids HairCutting',
      'color': KcardColor,
    },
    {
      'image': 'images/shaving.png',
      'text': 'Classic Shaving',
      'color': KcardColor
    },
    {
      'image': 'images/hair.png',
      'text': 'Hair Washing',
      'color': KcardColor,
    },
    {
      'image': 'images/cutting.png',
      'text': 'Hair Cutting',
      'color': KcardColor
    },
    {
      'image': 'images/beard.png',
      'text': 'Beard Trimming',
      'color': KcardColor,
    },
    {
      'image': 'images/facials.png',
      'text': 'Facials',
      'color': KcardColor,
    },
    {
      'image': 'images/kids.png',
      'text': 'Kids HairCutting',
      'color': KcardColor,
    },
    // Add more cards as needed
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: (cards.length / 2).ceil(),
      itemBuilder: (context, index) {
        return Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: _buildCard(cards[index * 2]),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: index * 2 + 1 < cards.length
                    ? _buildCard(cards[index * 2 + 1])
                    : SizedBox(),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildCard(Map<String, dynamic> cardData) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Booking(
              service: cardData['text'],
            ),
          ),
        );
      },
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          color: cardData['color'],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              cardData['image'],
              height: 100,
              width: 100,
            ),
            SizedBox(height: 10),
            Text(
              cardData['text'],
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
