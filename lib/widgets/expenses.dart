import 'package:flutter/material.dart';
import 'package:pnt_expense_tracker/widgets/expense_list/expenses_list.dart';
import 'package:pnt_expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<Expenses> createState() {
    return _Expense();
  }
}

class _Expense extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter Course',
      amount: 19.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Cinema',
      amount: 15.60,
      date: DateTime.now(),
      category: Category.lesure,
    ),
    Expense(
      title: 'Australia',
      amount: 1200,
      date: DateTime.now(),
      category: Category.travel,
    ),
  ];

  void _addExpense() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const Text('Show buttom sheet modal'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PnT Expense Tracker'),
        actions: [
          IconButton(
            onPressed: _addExpense,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          const Text('The chart...'),
          Expanded(
            child: ExpensesList(expenses: _registeredExpenses),
          ),
        ],
      ),
    );
  }
}
