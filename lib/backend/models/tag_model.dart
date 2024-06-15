class TagModel {

  final String image;
  final String title;
  final String neighbourhood;
  final String rentType;
  final bool favorite;

  TagModel(
      {required this.image,
      required this.title,
      required this.neighbourhood,
      required this.rentType,
      required this.favorite});
}