import '../drink.dart';

class Coffee extends Drink {
  Coffee() : super("Turkish Coffee");
  @override
  double getPrice() => 15.0;
}