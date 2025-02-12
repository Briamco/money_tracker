import 'package:flutter/material.dart';
import 'package:money_tracker/views/components/add_transaction_modal.dart';
import 'package:money_tracker/views/components/home_header.dart';
import 'package:money_tracker/views/components/transaction_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: const SafeArea(
        bottom: false,
        child: Column(
          children: [
            HomeHeader(),
            TransactionList()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          // Mostrar un bottom sheet para agregar una transacción
          showModalBottomSheet(
            context: context, 
            isScrollControlled: true,
            builder: (context) {
            return AddTransactionModal();
          });
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
