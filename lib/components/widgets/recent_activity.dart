import 'package:alurabank/components/widgets/ball_color.dart';
import 'package:alurabank/components/widgets/box_card.dart';
import 'package:alurabank/components/widgets/content_division.dart';
import 'package:alurabank/model/saldo_model.dart';
import 'package:alurabank/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: BoxCard(boxContent: _RecentActivityContent()),
    );
  }
}

class _RecentActivityContent extends StatelessWidget {
  const _RecentActivityContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: BallColor(
                    color: ThemeColors.ballColor['saida'],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Saída'),
                    Consumer<SaldoModel>(builder: (context, value, child) {
                      return Text(
                        '\$ ${value.totalTrasnfer.toString()}',
                        style: Theme.of(context).textTheme.bodyLarge,
                      );
                    })
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: BallColor(
                        color: ThemeColors.ballColor['entrada'],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Entrada'),
                        Consumer<SaldoModel>(builder: (context, value, child) {
                          return Text(
                            '\$ ${value.totalDeposit.toString()}',
                            style: Theme.of(context).textTheme.bodyLarge,
                          );
                        })
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16, bottom: 8),
          child: Text(
            'Limite de gastos: \$432.92',
          ),
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
          child: const LinearProgressIndicator(
            value: 0.5,
            minHeight: 8,
            color: ThemeColors.primaryColor,
            backgroundColor: Color(0xFF6C6C6C),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8, bottom: 8),
          child: ContentDivision(),
        ),
        const Text(
            'Esse mês você gastou \$1500.00 com\njogos. Tente abaixar esse custo!'),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Diga-me como',
            style: TextStyle(color: Color(0xFFB20CBB), fontSize: 16),
          ),
        ),
      ],
    );
  }
}
