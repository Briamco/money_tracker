import 'package:flutter/material.dart';
import 'package:money_tracker/controllers/transactions_provider.dart';
import 'package:money_tracker/views/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TransactionsProvider(),
      child: MaterialApp(
        title: 'Money Tracker',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: HomeScreen(),
          ),
        ),
      ),
    );
  }
}
