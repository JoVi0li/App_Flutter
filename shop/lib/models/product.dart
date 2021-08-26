class Product {
  final String id;
  final String title;
  final String subTitle;
  final String description;
  final double price;
  final String imageUrl;
  int quantity;
  bool isFavorite;

  Product({
    required this.id,
    required this.title,
    required this.subTitle,
    required this.description,
    required this.price,
    required this.imageUrl,
    this.isFavorite = false,
    this.quantity = 1
  });

  void toogleFavorite() {
    isFavorite = !isFavorite;
  }
}
