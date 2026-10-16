import 'menu_item_model.dart';

class CartItemModel {
  final String id;
  final MenuItemModel item;
  final List<String> selectedIngredients;
  final List<String> removedIngredients;
  final List<String> extraIngredients;
  final int quantity;
  final String specialInstructions;
  final double extraPricePerUnit;

  const CartItemModel({
    required this.id,
    required this.item,
    required this.selectedIngredients,
    this.removedIngredients = const [],
    this.extraIngredients = const [],
    this.quantity = 1,
    this.specialInstructions = '',
    this.extraPricePerUnit = 0.0,
  });

  double get unitPrice => item.price + extraPricePerUnit;
  double get totalPrice => unitPrice * quantity;

  CartItemModel copyWith({
    String? id,
    MenuItemModel? item,
    List<String>? selectedIngredients,
    List<String>? removedIngredients,
    List<String>? extraIngredients,
    int? quantity,
    String? specialInstructions,
    double? extraPricePerUnit,
  }) {
    return CartItemModel(
      id: id ?? this.id,
      item: item ?? this.item,
      selectedIngredients: selectedIngredients ?? this.selectedIngredients,
      removedIngredients: removedIngredients ?? this.removedIngredients,
      extraIngredients: extraIngredients ?? this.extraIngredients,
      quantity: quantity ?? this.quantity,
      specialInstructions: specialInstructions ?? this.specialInstructions,
      extraPricePerUnit: extraPricePerUnit ?? this.extraPricePerUnit,
    );
  }
}
