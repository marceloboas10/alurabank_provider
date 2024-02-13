import 'package:alurabank/components/views/deposit.dart';
import 'package:alurabank/components/views/transfer.dart';
import 'package:alurabank/components/widgets/box_card.dart';
import 'package:flutter/material.dart';

class AccountActions extends StatelessWidget {
  const AccountActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(
              'Ações da conta',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Deposit(),
                      ));
                },
                child: const BoxCard(
                  boxContent: _AccountActions(
                    iconCard: Icon(Icons.account_balance_wallet),
                    titleCard: 'Depositar',
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Transfer(),
                    ),
                  );
                },
                child: const BoxCard(
                  boxContent: _AccountActions(
                    iconCard: Icon(Icons.cached),
                    titleCard: 'Transferir',
                  ),
                ),
              ),
              const BoxCard(
                boxContent: _AccountActions(
                  iconCard: Icon(Icons.center_focus_strong),
                  titleCard: 'Ler',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _AccountActions extends StatelessWidget {
  const _AccountActions({required this.iconCard, required this.titleCard});

  final Icon iconCard;
  final String titleCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 82,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: iconCard,
          ),
          Text(titleCard)
        ],
      ),
    );
  }
}
