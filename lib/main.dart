import 'package:dart_console_app/logic/order_controller.dart';
import 'package:dart_console_app/ui/console_dashboard.dart';
import 'package:dart_console_app/ui/console_input_handler.dart';
import 'package:dart_console_app/ui/console_output_handler.dart';

import 'logic/order_manager.dart';
import 'logic/report_generator.dart';

void main() {

  final orderManager = OrderManager();
  final reportGenerator = ReportGenerator(orderManager);
  final controller = OrderController(orderManager, reportGenerator);

  final inputHandler = ConsoleInputHandler();
  final outputHandler = ConsoleOutputHandler();
  final dashboard = ConsoleDashboard(controller, inputHandler, outputHandler);

  dashboard.showMenu();

}