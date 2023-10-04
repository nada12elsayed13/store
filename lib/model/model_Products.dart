class ModelProduct {
  final dynamic id;
  final String title;
  final dynamic price;
  final String description;
  final String image;
  final ModelRating? rating;
  final String category;
  ModelProduct(
      {required this.id,
      required this.title,
      required this.category,
      required this.price,
      required this.description,
      required this.image,
      required this.rating});

  factory ModelProduct.fromJson(jsonData) {
    return ModelProduct(
        id:jsonData['id'],
        title: jsonData['title'],
        category: jsonData['category'],
        price: jsonData['price'],
        description: jsonData['description'],
        image: jsonData['image'],
        rating: jsonData['rating'] == null
            ? null
            : ModelRating.fromJson(jsonData['rating']));
  }
}

class ModelRating {
  final dynamic rate;
  final int count;

  ModelRating({required this.rate, required this.count});

  factory ModelRating.fromJson(jsonData) {
    return ModelRating(rate: jsonData['rate'], count: jsonData['count']);
  }
}
