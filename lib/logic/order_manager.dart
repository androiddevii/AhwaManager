import '../models/order.dart';
import 'order_service.dart';

class OrderManager implements OrderService{

  final List<Order> _orders = [];

  @override
  void addOrder(Order order) {
    _orders.add(order);
  }

  @override
  bool markOrderAsComplete(int index) {
    if (index >= 0 && index < _orders.length) {
      _orders[index].markCompleted();
      return true;
    }
    return false;
  }

  @override
  List<Order> getPendingOrders() {
    return _orders.where((o) => !o.isCompleted).toList();
  }

  @override
  List<Order> getAllOrders() => List.unmodifiable(_orders);

}