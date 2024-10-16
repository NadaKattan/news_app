class ArticleModel{
  final String? image;
  final String title;
  final String? subTitle;
  ArticleModel({required this.image,required this.title, required this.subTitle});
  @override
  String toString() {
    return 'ArticleModel{image: $image, title: $title, subTitle: $subTitle}';
  }
}