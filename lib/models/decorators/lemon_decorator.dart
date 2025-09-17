import 'drink_decorator.dart';
import '../drink.dart';

class LemonDecorator extends DrinkDecorator {
  LemonDecorator(Drink drink) : super(drink);

  @override double getPrice() => drink.getPrice() + 1.5;
  @override String get name => "${drink.name} with Lemon";
}