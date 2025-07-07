import 'package:flutter/material.dart';
import '../../models/expense.dart';
import 'expense_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onRemoveExpense,
    required this.width,
  });

  final List<Expense> expenses;
  final Function(Expense expense) onRemoveExpense;
  final bool width;

  @override
  Widget build(BuildContext context) {
    return width
        ? ListView.builder(
            itemCount: expenses.length,
            itemBuilder: (context, index) {
              Expense expense = expenses[index];
              return Dismissible(
                background: Container(
                  color: Theme.of(context).colorScheme.error,
                  margin: Theme.of(context).cardTheme.margin,
                  child: Icon(Icons.place),
                ),
                key: ValueKey(expense),
                onDismissed: (direction) {
                  onRemoveExpense(expense);
                },
                child: ExpenseItem(expense: expense),
              );
            },
          )
        : GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10,
              childAspectRatio: 2.3,
            ),
            itemCount: expenses.length,
            itemBuilder: (context, index) {
              Expense expense = expenses[index];
              return Dismissible(
                background: Container(
                  color: Theme.of(context).colorScheme.error,
                  margin: Theme.of(context).cardTheme.margin,
                  child: Icon(Icons.place),
                ),
                key: ValueKey(expense),
                onDismissed: (direction) {
                  onRemoveExpense(expense);
                },
                child: ExpenseItem(expense: expense),
              );
            },
          );
  }
}