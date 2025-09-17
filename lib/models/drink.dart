abstract class Drink {
  final String _baseName;
  Drink(this._baseName);

  String get name => _baseName;

  double getPrice();

  @override
  String toString() => name;
}




