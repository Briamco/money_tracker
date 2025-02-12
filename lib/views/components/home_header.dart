import 'package:flutter/material.dart';
import 'package:money_tracker/views/widgets/header_card.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.teal),
      child: Column(
        children: [
          SizedBox(height: 12),
          Text(
            'MONEY TRACKER', 
            style: textTheme.titleSmall!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.teal.shade900
            ),
          ),
          SizedBox(height: 12),
          Text(
            'Balance:',
            style: textTheme.bodySmall!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white.withAlpha(200)
            )
          ),
          Text(
            '\$ 1,000.00',
            style: textTheme.headlineLarge!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                HeaderCard(
                  title: 'Incomes', 
                  amount: 1000.00, 
                  icon: Icon(Icons.attach_money, color: Colors.green)
                ),
                SizedBox(width: 12,),
                HeaderCard(
                  title: 'Expenses', 
                  amount: -500.00, 
                  icon: Icon(Icons.money_off, color: Colors.red)
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}