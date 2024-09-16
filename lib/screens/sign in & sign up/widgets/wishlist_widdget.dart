class WishlistWidget {
  // Static wishlist products list accessible globally
  static List<Map<String, dynamic>> _wishListProducts = [];

  // Method to get all products in the wishlist
  static List<Map<String, dynamic>> get wishListProducts => _wishListProducts;

  // Method to add a product to the wishlist
  static void addProduct(Map<String, dynamic> product) {
    _wishListProducts.add(product);
  }

  // Method to remove a product from the wishlist
  static void removeProduct(Map<String, dynamic> product) {
    _wishListProducts.removeWhere((item) => item['id'] == product['id']);
  }

  // Method to check if a product is in the wishlist
  static bool isProductInWishlist(Map<String, dynamic> product) {
    return _wishListProducts.any((item) => item['id'] == product['id']);
  }
}
