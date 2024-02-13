import 'package:alurabank/components/widgets/ball_color.dart';
import 'package:alurabank/components/widgets/box_card.dart';
import 'package:alurabank/components/widgets/content_division.dart';
import 'package:alurabank/theme/theme_colors.dart';
import 'package:flutter/material.dart';

class AccountPoint extends StatelessWidget {
  const AccountPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text('Pontos da conta'),
              ),
            ],
          ),
          Column(
            children: [BoxCard(boxContent: _AccountPoint())],
          )
        ],
      ),
    );
  }
}

class _AccountPoint extends StatelessWidget {
  const _AccountPoint();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Pontos totais:'),
        Text(
          '3000',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 6, bottom: 6),
          child: ContentDivision(),
        ),
        Text(
          'Objetivos:',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 4),
              child: BallColor(
                color: ThemeColors.ballColor['entrega'],
              ),
            ),
            const Text('Entrega grátis: 1500pts'),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 4),
              child: BallColor(
                color: ThemeColors.ballColor['streaming'],
              ),
            ),
            const Text('1 mês de streaming: 3000pts')
          ],
        )
      ],
    );
  }
}
