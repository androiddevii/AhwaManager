import '../models/order.dart';

abstract class OrderService {
  void addOrder(Order order);
  bool markOrderAsComplete(int index);
  List<Order> getPendingOrders();
  List<Order> getAllOrders();
}