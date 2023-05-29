import 'package:flutter/material.dart';
import 'package:project_3/widgets/expenses_list/expenses_list.dart';
import 'package:project_3/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        date: DateTime.now(),
        amount: 200,
        title: 'Flutter Course',
        category: Category.work),
    Expense(
        date: DateTime.now(),
        amount: 500,
        title: 'Cinema',
        category: Category.leisure),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Text('The Chart'),
        Expanded(child: ExpensesList(expenses: _registeredExpenses)),
      ],
    ));
  }
}
