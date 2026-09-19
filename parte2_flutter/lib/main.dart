import 'package:flutter/material.dart';
import 'package:parte2_flutter/screens/home_page.dart';

void main() {
  runApp(TelaPrincipal());
}

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage(),
    debugShowCheckedModeBanner: false);
  }
}
