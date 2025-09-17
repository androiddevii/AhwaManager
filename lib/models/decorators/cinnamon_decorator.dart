import 'drink_decorator.dart';
import '../drink.dart';

class CinnamonDecorator extends DrinkDecorator {
  CinnamonDecorator(Drink drink) : super(drink);

  @override double getPrice() => drink.getPrice() + 1.0;
  @override String get name => "${drink.name} with Cinnamon";
}
