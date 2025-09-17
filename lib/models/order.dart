import 'drink.dart';

class Order {
  final String customerName;
  final Drink drink;
  final String instructions;
  bool _isCompleted = false;

  Order(this.customerName, this.drink, this.instructions);

  void markCompleted() {
    _isCompleted = true;
  }

  bool get isCompleted => _isCompleted;

  @override
  String toString() {
    return "Customer: $customerName, Drink: ${drink.name}, "
        "Instructions: $instructions, Status: ${_isCompleted ? "Done" : "Pending"}";
  }
}