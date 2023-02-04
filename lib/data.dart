import 'package:fproject/product_model.dart';

class Data {
  static List<ProductModel> generateProducts(){
    return [
      ProductModel(
          1,
          "assets/watch1.jpg",
          "Bamford Watch Department Rolex",
          "watch",
         // 99.56
      ),
      ProductModel(
          2,
          "assets/watch2wo.jpg",
          "Round Pointer Quartz Watch",
          "watch",
      ),
      ProductModel(
          3,
          "assets/watch3sp.jpg",
          "Digital Smart Watch",
          "watch",
      ),
      ProductModel(
          4,
          "assets/watch4kids.jpg",
          "Kid's Playzoom 2 Pink Unicorn",
          "watch",
      ),
    ];
  }

  static List<ProductModel> generateCategories(){
    return [
      ProductModel(
          1,
          "assets/watch3sp.jpg",
          "All",
          "watch",
      ),
      ProductModel(
          2,
          "assets/watch2wo.jpg",
          "women",
          "watch",

      ),
      ProductModel(
          3,
          "assets/watch1.jpg",
          "man",
          "watch",
      ),
      ProductModel(
          4,
          "assets/watch4kids.jpg",
          "kids",
          "watch",
      ),
    ];
  }
}