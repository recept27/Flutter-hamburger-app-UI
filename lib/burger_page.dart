import 'package:flutter/material.dart';

class BurgerPage extends StatefulWidget {
  static const tag = "burger_page";

  const BurgerPage({Key? key}) : super(key: key);
  @override
  State<BurgerPage> createState() => _BurgerPageState();
}

class _BurgerPageState extends State<BurgerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
