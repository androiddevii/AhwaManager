import 'dart:collection';
import 'order_service.dart';

class ReportGenerator {

  final OrderService orderService;
  ReportGenerator(this.orderService);

  Map<String, int> getTopSelling() {
    final Map<String, int> sales = SplayTreeMap<String, int>();
    for (var order in orderService.getAllOrders()) {
      sales[order.drink.name] = (sales[order.drink.name] ?? 0) + 1;
    }
    return sales;
  }

  int getTotalOrders() {
    return orderService.getAllOrders().length;
  }

  String generateDailyReport() {
    final buffer = StringBuffer();
    buffer.writeln("------ Daily Sales Report ------");
    buffer.writeln("Total Orders: ${getTotalOrders()}");

    final topSelling = getTopSelling();
    if (topSelling.isEmpty) {
      buffer.writeln("No drinks sold today.");
    } else {
      buffer.writeln("Top-Selling Drinks:");
      topSelling.forEach((drink, count) {
        buffer.writeln("$drink: $count");
      });
    }
    buffer.writeln("--------------------------------");
    return buffer.toString();
  }
}