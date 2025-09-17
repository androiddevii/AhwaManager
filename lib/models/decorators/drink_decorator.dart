import '../drink.dart';

// Base decorator
abstract class DrinkDecorator extends Drink {

  final Drink drink;

  DrinkDecorator(this.drink) : super('');

  @override
  String get name => drink.name;
}
