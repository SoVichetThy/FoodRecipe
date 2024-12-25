class Ingredient {
  final String id;
  final String name;
  final int quan;
  final Unit unit;
  Ingredient({
    required this.name,
    required this.id,
    required this.quan,
    required this.unit,
  });
  @override
  String toString() {
    return '$quan $unit of $name';
  }
}

enum Unit {
  gram,
  milliliter,
  tablespoon,
  clove,
  teaspoon,
  piece,
  liter,
  stalk,
}
