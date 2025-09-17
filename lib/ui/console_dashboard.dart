import '../logic/order_controller.dart';
import 'console_input_handler.dart';
import 'console_output_handler.dart';

class ConsoleDashboard {

  final OrderController controller;
  final ConsoleInputHandler inputHandler;
  final ConsoleOutputHandler outputHandler;

  ConsoleDashboard(this.controller, this.inputHandler, this.outputHandler);

  void showMenu() {
    while (true) {
      outputHandler.showMainMenu();

      final choice = inputHandler.getMenuChoice();
      switch (choice) {
        case "1":
          _handleAddOrder();
          break;
        case "2":
          _handleCompleteOrder();
          break;
        case "3":
          _handleShowPendingOrders();
          break;
        case "4":
          _handleGenerateReport();
          break;
        case "5":
          outputHandler.showExitMessage();
          return;
        default:
          outputHandler.showInvalidChoice();
      }
    }
  }

  void _handleAddOrder() {
    final customerName = inputHandler.getCustomerName();
    final drink = inputHandler.selectDrink();
    final decoratedDrink = inputHandler.addDecorators(drink);
    final instructions = inputHandler.getInstructions();

    final result = controller.addOrder(customerName, decoratedDrink, instructions);
    outputHandler.showMessage(result);
  }

  void _handleCompleteOrder() {
    final allOrders = controller.getAllOrders();
    outputHandler.showOrders(allOrders);

    if (allOrders.isNotEmpty) {
      final index = inputHandler.getOrderIndex();
      if (index != null) {
        final result = controller.markOrderAsComplete(index);
        outputHandler.showMessage(result);
      } else {
        outputHandler.showMessage("Invalid input.");
      }
    }
  }

  void _handleShowPendingOrders() {
    final pending = controller.getPendingOrders();
    outputHandler.showPendingOrders(pending);
  }

  void _handleGenerateReport() {
    final report = controller.generateReport();
    outputHandler.showMessage(report);
  }
}