import 'package:alurabank/components/widgets/box_card.dart';
import 'package:alurabank/model/saldo_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Deposit extends StatelessWidget {
  const Deposit({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController deposit = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: const Text('Depósito'), centerTitle: true),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 30),
              child: BoxCard(
                boxContent: Column(
                  children: [
                    const Text('Qual é o valor do depósito?'),
                    TextField(
                        controller: deposit,
                        keyboardType: TextInputType.number),
                    Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text(
                        'Digite um valor entre R\$20,00 e R\$10.000',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Consumer<SaldoModel>(
            builder: (context, value, child) {
              return ElevatedButton(
                style: ButtonStyle(
                    textStyle:
                        const MaterialStatePropertyAll(TextStyle(fontSize: 20)),
                    backgroundColor: MaterialStatePropertyAll(
                        Theme.of(context).primaryColor),
                    fixedSize: const MaterialStatePropertyAll(Size(280, 50))),
                onPressed: () {
                  var depositValue = double.tryParse(deposit.text);
                  if (depositValue != null && depositValue > 0) {
                    value.depositValue(depositValue);
                    Navigator.pop(context);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Informe um valor'),
                      ),
                    );
                  }
                },
                child: const Text('Depositar'),
              );
            },
          )
        ],
      ),
    );
  }
}
