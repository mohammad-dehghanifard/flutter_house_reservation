class AdsModel {
  final String image,title,description,rentType;
  final int score,bedroom,bathroom,price;

  AdsModel(
      {required this.image,
      required this.title,
      required this.description,
      required this.score,
      required this.bedroom,
      required this.bathroom,
      required this.price,
      required this.rentType});
}