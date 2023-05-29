import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { food, travel, leisure, work }

class Expense {
  Expense({
    required this.date,
    required this.amount,
    required this.title,
    required this.category,
  }) : id = uuid.v4();
  final String id;
  final DateTime date;
  final double amount;
  final String title;
  final Category category;
}
