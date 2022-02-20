import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.wallet_membership_outlined), label: "Wallet"),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle), label: "Wallet"),
        ],
        selectedItemColor: Colors.pink,
        unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
        backgroundColor: const Color.fromRGBO(55, 57, 84, 1));
  }
}
