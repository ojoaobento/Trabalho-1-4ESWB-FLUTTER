import 'package:flutter/material.dart';
import 'package:parte2_flutter/screens/home_page.dart';

void main() {
  runApp(telaPrincipal());
}

class telaPrincipal extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}
