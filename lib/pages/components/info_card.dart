import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constans.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.name,
    required this.profession,
  });

  final String name, profession;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Colors.white24,
        child: Icon(
          CupertinoIcons.person,
          color: KwhitColor,
        ),
      ),
      title: Text(
        name,
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        profession,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
