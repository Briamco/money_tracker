import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTransactionModal extends StatefulWidget {
  const AddTransactionModal({super.key});

  @override
  State<AddTransactionModal> createState() => _AddTransactionModalState();
}

class _AddTransactionModalState extends State<AddTransactionModal> {
  
  int? typeIndex = 1;
  
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      height: 680,
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Container(
              height: 6,
              width: 48,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'New Transaction', 
              style: TextStyle(
                fontSize: 20, 
                color: Colors.teal, 
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          CupertinoSlidingSegmentedControl<int>(
            groupValue: typeIndex,
            children: const {
              0: Text('Income'),
              1: Text('Expense')
            }, 
            onValueChanged: (int? value) {
              setState(() {
                typeIndex = value;
              });
            }
          ),
          SizedBox(height: 20),
          Text(
            'AMOUNT', 
            style: textTheme.bodySmall!.copyWith(color: Colors.teal)
          ),
          TextField(
            inputFormatters: [CurrencyTextInputFormatter.currency(symbol: '\$ ')],
            textAlign: TextAlign.center,
            decoration: InputDecoration.collapsed(
              hintText: '\$ 0.00',
              hintStyle: TextStyle(color: Colors.grey)
            ),
            keyboardType: TextInputType.number,
            autofocus: true,
          ),
          SizedBox(height: 20),
          Text(
            'DESCRIPTION', 
            style: textTheme.bodySmall!.copyWith(color: Colors.teal)
          ),
          TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration.collapsed(
              hintText: 'Enter a description',
              hintStyle: TextStyle(color: Colors.grey)
            ),
            keyboardType: TextInputType.text,
          ),
          SizedBox(
            width: 250,
            child: ElevatedButton(
              onPressed: (){}, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal
              ), 
              child: Text('Add', style: TextStyle(color: Colors.white),)
            ),
          )
        ],
      ),
    );
  }
}