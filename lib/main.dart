import 'package:flutter/material.dart';

void main() {
  runApp(const SouthseaCinemaApp());
}

class SouthseaCinemaApp extends StatelessWidget {
  const SouthseaCinemaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Southsea Cinema',
      home: Scaffold(
        appBar: AppBar(title: const Text('Southsea Cinema')),
        body: const Center(
          child: Text('Welcome to Southsea Cinema'),
        ),
      ),
    );
  }
}


class OrderItemDisplay extends StatelessWidget {
  final String itemType;
  final int quantity;

  const OrderItemDisplay(this.quantity, this.itemType, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text('This is a placeholder for OrderItemDisplay');
  }
}
