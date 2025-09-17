import 'drink_decorator.dart';
import '../drink.dart';

class MilkDecorator extends DrinkDecorator {
  MilkDecorator(Drink drink) : super(drink);

  @override double getPrice() => drink.getPrice() + 3.0;
  @override String get name => "${drink.name} with Milk";
}