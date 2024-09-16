class CartItem {
  final String name;
  final String image;
  final double price;
  final String size;
  int quantity;

  CartItem({
    required this.name,
    required this.image,
    required this.price,
    required this.size,
    this.quantity = 1,
  });
}

List<CartItem> cartItems = [];
