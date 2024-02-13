import 'package:alurabank/components/widgets/box_card.dart';
import 'package:alurabank/model/saldo_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Transfer extends StatelessWidget {
  const Transfer({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController deposit = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transferencia'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 30),
              child: BoxCard(
                boxContent: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Qual é o valor da transferência?',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Consumer<SaldoModel>(
                      builder: (context, saldo, child) {
                        return Text(
                          'Saldo disponível em conta ${saldo.toString()}',
                          style: Theme.of(context).textTheme.titleSmall,
                        );
                      },
                    ),
                    TextField(
                      controller: deposit,
                      keyboardType: TextInputType.number,
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
                  var transferValue = double.tryParse(deposit.text);
                  if (transferValue != null && transferValue > 0) {
                    if (value.value >= transferValue) {
                      value.transferValue(transferValue);
                      Navigator.pop(context);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Saldo insulficiente')));
                    }
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Informe um valor')));
                  }
                },
                child: const Text('Transferir'),
              );
            },
          ),
        ],
      ),
    );
  }
}
