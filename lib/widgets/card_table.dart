import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _CardItem(
              icon: Icons.check_box_outline_blank,
              color: Colors.blue,
              text: "General"),
          _CardItem(
              icon: Icons.wallet_membership,
              color: Colors.red,
              text: "Transport")
        ]),
        TableRow(children: [
          _CardItem(
              icon: Icons.check_box_outline_blank,
              color: Colors.blue,
              text: "General"),
          _CardItem(
              icon: Icons.wallet_membership,
              color: Colors.red,
              text: "Transport")
        ]),
        TableRow(children: [
          _CardItem(
              icon: Icons.check_box_outline_blank,
              color: Colors.blue,
              text: "General"),
          _CardItem(
              icon: Icons.wallet_membership,
              color: Colors.red,
              text: "Transport")
        ]),
        TableRow(children: [
          _CardItem(
              icon: Icons.check_box_outline_blank,
              color: Colors.blue,
              text: "General"),
          _CardItem(
              icon: Icons.wallet_membership,
              color: Colors.red,
              text: "Transport")
        ]),
      ],
    );
  }
}

class _CardItem extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _CardItem(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _BlurBackground(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: color,
          child: Icon(
            icon,
            size: 35,
            color: Colors.white,
          ),
          radius: 30,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.blue, fontSize: 18),
        )
      ],
    ));
  }
}

class _BlurBackground extends StatelessWidget {
  final Widget child;

  const _BlurBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(67, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: child,
          ),
        ),
      ),
    );
  }
}
