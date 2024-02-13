import 'package:alurabank/model/saldo_model.dart';
import 'package:alurabank/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: ThemeColors.headerGradient,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(18, 80, 16, 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Conta',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Consumer<SaldoModel>(builder: (context, saldo, child) {
                  return Text.rich(
                    TextSpan(
                      text: saldo.toString(),
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  );
                }),
              ],
            ),
            const Icon(
              Icons.account_circle,
              size: 42,
            ),
          ],
        ),
      ),
    );
  }
}
