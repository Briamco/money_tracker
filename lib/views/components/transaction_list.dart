import 'package:flutter/material.dart';
import 'package:money_tracker/controllers/transactions_provider.dart';
import 'package:money_tracker/models/transaction.dart';
import 'package:provider/provider.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final transactions = Provider.of<TransactionsProvider>(context).transactions;

    return Expanded(
      child: Container(
        height: 200,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: ListView.builder(
          itemCount: transactions.length,
          itemBuilder: (context, index) {
            final transaction = transactions[index];
            final icon = transaction.type == TransactionType.income 
              ? Icons.attach_money 
              : Icons.money_off;

            final color = transaction.type == TransactionType.income 
              ? Colors.green 
              : Colors.red;

            final type = transaction.type == TransactionType.income 
              ? 'Income' 
              : 'Expense';
            
            final value = transaction.type == TransactionType.income 
              ? '\$ ${transaction.amount.toStringAsFixed(2)}'
              : '-\$ ${transaction.amount.toStringAsFixed(2)}';
            
            return ListTile(
              leading: Icon(icon, color: color),
              title: Text(transaction.description),
              subtitle: Text(type),
              trailing: Text(
                value, 
                style: TextStyle(fontSize: 14, color: color),
              ),
            );
          },
        ),
      ),
    );
  }
}