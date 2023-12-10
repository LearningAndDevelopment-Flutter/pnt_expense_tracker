import 'package:flutter/material.dart';
import 'package:pnt_expense_tracker/widgets/expenses.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color.fromARGB(255, 211, 206, 206),
      ),
      home: const Expenses(),
    ),
  );
}
