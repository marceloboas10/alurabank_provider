import 'package:alurabank/components/widgets/account_actions.dart';
import 'package:alurabank/components/widgets/account_point.dart';
import 'package:alurabank/components/widgets/header.dart';
import 'package:alurabank/components/widgets/recent_activity.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            RecentActivity(),
            AccountActions(),
            AccountPoint(),
          ],
        ),
      ),
    );
  }
}
