import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 200,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.attach_money, color: Colors.green),
              title: Text('Income'),
              subtitle: Text('Salary'),
              trailing: Text('\$ 1,000.00', style: TextStyle(fontSize: 14),),
            ),
            ListTile(
              leading: Icon(Icons.money_off, color: Colors.red),
              title: Text('Expense'),
              subtitle: Text('Rent'),
              trailing: Text('- \$ 500.00', style: TextStyle(fontSize: 14),),
            ),
          ],
        ),
      ),
    );
  }
}