class Product {
  final String name;
  final double price;
  final String imageUrl;
  final double price1;
  final double multiplier;
  final int productNumber;
  final int productSold;
  final int addProduct;
  final int deleteNumberProduct;
  final int remainingProduct; // sp con lai
  final String content;
  bool favorite;

  // ignore: prefer_typing_uninitialized_variables
  final rating;

//bool isFavorite;
  Product(
      this.name,
      this.price,
      this.imageUrl,
      this.multiplier,
      this.productNumber,
      this.productSold,
      this.addProduct,
      this.deleteNumberProduct,
      this.content,
      this.favorite,
      this.rating)
      : price1 = price * (1 - multiplier),
        remainingProduct =
            productNumber - productSold - deleteNumberProduct + addProduct;
}

final List<Product> products = [
  Product(
      'Car model Blaze',
      100.0,
      'assets/image/toy/car_modelBlaze.jpg',
      0.5,
      100,
      10,
      10,
      0,
      """Lyrics Demons - Imagine Dragons:
        When the days are cold and the cards all fold
        And the saints we see are all made of gold
        When your dreams all fail and the ones we hail are the worst of all
        And the blood's run stale
        I wanna hide the truth, I wanna shelter you
        But with the beast inside
        There's nowhere we can hide
        No matter what we breed, we still are made of greed
        This is my kingdom come
        This is my kingdom come""",
      false,
      4.4),
  Product(
      'Đồ chơi khủng long',
      100.0,
      'assets/image/toy/khunglong.jpg',
      0.6,
      100,
      15,
      20,
      0,
      """Lyrics Demons - Imagine Dragons:
        When the days are cold and the cards all fold
        And the saints we see are all made of gold
        When your dreams all fail and the ones we hail are the worst of all
        And the blood's run stale
        I wanna hide the truth, I wanna shelter you
        But with the beast inside
        There's nowhere we can hide
        No matter what we breed, we still are made of greed
        This is my kingdom come
        This is my kingdom come""",
      false,
      4.4),
  Product(
      'Robot Model',
      100.0,
      'assets/image/toy/model_robot.jpg',
      0.65,
      100,
      15,
      20,
      0,
      """Lyrics Demons - Imagine Dragons:
        When the days are cold and the cards all fold
        And the saints we see are all made of gold
        When your dreams all fail and the ones we hail are the worst of all
        And the blood's run stale
        I wanna hide the truth, I wanna shelter you
        But with the beast inside
       This is my kingdom come""",
      false,
      4.4),
  Product(
      'Product 4',
      100.0,
      'assets/image/toy/sungdochoi.jpg',
      0.3,
      100,
      15,
      20,
      0,
      """Lyrics Demons - Imagine Dragons:
        When the days are cold and the cards all fold
        And the saints we see are all made of gold
        When your dreams all fail and the ones we hail are the worst of all
        And the blood's run stale
        This is my kingdom come""",
      false,
      4.4),
  Product(
      'Product 5',
      20.0,
      'assets/image/secondScreen.png',
      0.2,
      100,
      15,
      20,
      0,
      """Lyrics Demons - Imagine Dragons:
        When the days are cold and the cards all fold
       This is my kingdom come""",
      false,
      4.4),
  Product(
      'Product 6',
      30.0,
      'assets/image/toy/sungdochoi.jpg',
      0.1,
      100,
      15,
      20,
      0,
      """Lyrics Demons - Imagine Dragons:
        When the days are cold and the cards all fold
        And the saints we see are all made of gold
        When your dreams all fail and the ones we hail are the worst of all
      This is my kingdom come""",
      false,
      4.4),
  Product(
      'Product 7',
      100.0,
      'assets/image/secondScreen.png',
      0.3,
      100,
      15,
      20,
      0,
      """Lyrics Demons - Imagine Dragons:
        When the days are cold and the cards all fold
        And the saints we see are all made of gold
        When your dreams all fail and the ones we hail are the worst of all
        And the blood's run stale
        I wanna hide the truth, I wanna shelter you
        But with the beast inside
        There's nowhere we can hide
      This is my kingdom come""",
      false,
      4.4),
  Product(
      'Sung',
      20.0,
      'assets/image/toy/sungdochoi.jpg',
      0.2,
      100,
      15,
      20,
      0,
      """Lyrics Demons - Imagine Dragons:
       This is my kingdom come""",
      false,
      4.4),
  Product(
      'Product 9',
      30.0,
      'assets/image/secondScreen.png',
      0.5,
      100,
      15,
      20,
      0,
      """Lyrics Demons - Imagine Dragons:
        When the days are cold and the cards all fold
        And the saints we see are all made of gold
        When your dreams all fail and the ones we hail are the worst of all
        And the blood's run stale
       This is my kingdom come""",
      false,
      4.4),
];

final List<Product> sortedProducts = List.from(products)
  ..sort((a, b) => b.multiplier.compareTo(a.multiplier));

final List<Product> largestProducts = sortedProducts.take(4).toList();
//final List<Product> largestMultipliers = [];

// void main() {
//   // ... Your product list definition and sorting code ...

//   print('Sorted products:');
//   for (final product in sortedProducts) {
//     print('${product.name}: ${product.multiplier}');
//   }

//   print('Smallest multipliers:');
//   for (final product in smallestMultipliers) {
//     print('${product.name}: ${product.multiplier}');
//   }
// }
