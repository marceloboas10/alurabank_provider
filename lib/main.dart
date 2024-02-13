import 'package:alurabank/components/views/home_page.dart';
import 'package:alurabank/model/saldo_model.dart';
import 'package:alurabank/theme/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => SaldoModel(),
    child: const AluraBank(),
  ));
}

class AluraBank extends StatelessWidget {
  const AluraBank({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      home: const HomePage(),
    );
  }
}
