import 'dart:io';
import '../../models/decorators/cinnamon_decorator.dart';
import '../../models/decorators/honey_decorator.dart';
import '../../models/decorators/lemon_decorator.dart';
import '../../models/decorators/milk_decorator.dart';
import '../../models/decorators/mint_decorator.dart';
import '../../models/drink.dart';
import '../../models/drinks/coffee.dart';
import '../../models/drinks/hibiscus.dart';
import '../../models/drinks/tea.dart';
import '../../utils/drink_validator.dart';

class ConsoleInputHandler {

  String getMenuChoice() {
    stdout.write("Choose an option: ");
    return stdin.readLineSync() ?? "";
  }

  String getCustomerName() {
    stdout.write("Enter customer name: ");
    return stdin.readLineSync() ?? "Unknown";
  }

  Drink selectDrink() {
    print("Choose a drink:");
    print("1. Shai");
    print("2. Turkish Coffee");
    print("3. Hibiscus Tea");
    stdout.write("Your choice: ");

    final drinkChoice = stdin.readLineSync();

    switch (drinkChoice) {
      case "1":
        return Tea();
      case "2":
        return Coffee();
      case "3":
        return Hibiscus();
      default:
        print("Invalid choice, defaulting to Shai.");
        return Tea();
    }
  }

  Drink addDecorators(Drink baseDrink) {
    Drink currentDrink = baseDrink;

    while (true) {
      print("\nCurrent drink: ${currentDrink.name} - Price: \$${currentDrink.getPrice()}");
      print("Add extras?");
      print("1. Add Milk (+\$3.0)");
      print("2. Add Lemon (+\$1.5)");
      print("3. Add Fresh Mint (+\$2.0)");
      print("4. Add Cinnamon (+\$1.0)");
      print("5. Add Honey (+\$2.5)");
      print("6. Done - No more extras");
      stdout.write("Your choice: ");

      final choice = stdin.readLineSync();

      switch (choice) {
        case "1":
          if (canAddMilk(currentDrink)) {
            currentDrink = MilkDecorator(currentDrink);
            print("Milk added!");
          } else {
            print("Milk doesn't go well with this drink.");
          }
          break;
        case "2":
          if (canAddLemon(currentDrink)) {
            currentDrink = LemonDecorator(currentDrink);
            print("Lemon added!");
          } else {
            print("Lemon doesn't go well with this drink.");
          }
          break;
        case "3":
          if (canAddMint(currentDrink)) {
            currentDrink = MintDecorator(currentDrink);
            print("Fresh mint added!");
          } else {
            print("Mint doesn't go well with this drink.");
          }
          break;
        case "4":
          if (canAddCinnamon(currentDrink)) {
            currentDrink = CinnamonDecorator(currentDrink);
            print("Cinnamon added!");
          } else {
            print("Cinnamon doesn't go well with this drink.");
          }
          break;
        case "5":
          if (canAddHoney(currentDrink)) {
            currentDrink = HoneyDecorator(currentDrink);
            print("Honey added!");
          } else {
            print("Honey doesn't go well with this drink.");
          }
          break;
        case "6":
          return currentDrink;
        default:
          print("Invalid choice, try again.");
      }
    }
  }

  String getInstructions() {
    stdout.write("Enter special instructions: ");
    return stdin.readLineSync() ?? "";
  }

  int? getOrderIndex() {
    stdout.write("Enter order number to mark as completed: ");
    final input = stdin.readLineSync();
    return int.tryParse(input ?? "");
  }
}