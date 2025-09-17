import '../models/drink.dart';
import '../models/order.dart';
import 'order_service.dart';
import 'report_generator.dart';

class OrderController {

  final OrderService orderService;
  final ReportGenerator reportGenerator;

  OrderController(this.orderService, this.reportGenerator);

  String addOrder(String customerName, Drink drink, String instructions) {
    orderService.addOrder(Order(customerName, drink, instructions));
    return "Order added successfully! Final drink: ${drink.name} - Price: \$${drink.getPrice()}";
  }

  List<Order> getAllOrders() => orderService.getAllOrders();

  List<Order> getPendingOrders() => orderService.getPendingOrders();

  String generateReport() => reportGenerator.generateDailyReport();

  String markOrderAsComplete(int index) {
    final success = orderService.markOrderAsComplete(index);
    return success ? "Order completed." : "Invalid order number.";
  }

}