import '../../models/order.dart';

class ConsoleOutputHandler {

  void showMainMenu() {
    print("\n=== Smart Ahwa Manager ===");
    print("1. Add Order");
    print("2. Mark Order as Complete");
    print("3. View Pending Orders");
    print("4. Generate Daily Report");
    print("5. Exit");
  }

  void showMessage(String message) {
    print(message);
  }

  void showOrders(List<Order> orders) {
    if (orders.isEmpty) {
      print("No orders yet.");
      return;
    }

    print("Orders:");
    for (int i = 0; i < orders.length; i++) {
      print("$i: ${orders[i]}");
    }
  }

  void showPendingOrders(List<Order> orders) {
    if (orders.isEmpty) {
      print("No pending orders.");
    } else {
      print("Pending Orders:");
      for (var order in orders) {
        print(order);
      }
    }
  }

  void showExitMessage() {
    print("Thank you for using Smart Ahwa Manager!");
  }

  void showInvalidChoice() {
    print("Invalid choice, try again.");
  }
}