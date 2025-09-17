import 'drink_decorator.dart';
import '../drink.dart';

class MintDecorator extends DrinkDecorator {
  MintDecorator(Drink drink) : super(drink);

  @override double getPrice() => drink.getPrice() + 2.0;
  @override String get name => "${drink.name} with Fresh Mint";
}
