import 'package:flutter/material.dart';
import 'package:navegation_example/wallet.dart';

class Transfers extends StatelessWidget {
  const Transfers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Esta es la vista de transferencias'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Regresar!'),
        ),
      )
    );
  }
}