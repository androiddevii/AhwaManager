import 'drink_decorator.dart';
import '../drink.dart';

class HoneyDecorator extends DrinkDecorator {
  HoneyDecorator(Drink drink) : super(drink);

  @override double getPrice() => drink.getPrice() + 2.5;
  @override String get name => "${drink.name} with Honey";
}