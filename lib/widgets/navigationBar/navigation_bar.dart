import 'package:flutter/material.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 80,
            width: 150,
            child: Image.asset('assets/images/LogoNuevoShadday.png'),
          ),
          const Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _NavBarItem(title: 'Inicio'),
              SizedBox(
                width: 60,
              ),
              _NavBarItem(title: 'Jóvenes'),
              SizedBox(
                width: 60,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {

  final String title;
  const _NavBarItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 18),
    );
  }
}