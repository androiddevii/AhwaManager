import '../models/drink.dart';

// Helper methods for logical combinations
bool canAddMilk(Drink drink) {
  return drink.name.contains("Coffee") || drink.name.contains("Shai");
}

bool canAddLemon(Drink drink) {
  return drink.name.contains("Shai") || drink.name.contains("Hibiscus");
}

bool canAddMint(Drink drink) {
  return drink.name.contains("Shai") || drink.name.contains("Hibiscus");
}

bool canAddCinnamon(Drink drink) {
  return drink.name.contains("Coffee") || drink.name.contains("Shai");
}

bool canAddHoney(Drink drink) {
  return drink.name.contains("Shai") || drink.name.contains("Hibiscus");
}