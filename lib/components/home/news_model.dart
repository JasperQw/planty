class NewsModel {
  final String title;
  final String publication;
  final String imagePath; // Change the type to String

  NewsModel({
    required this.title,
    required this.publication,
    required this.imagePath,
  });
}

List<NewsModel> newsData = [
  NewsModel(
    title:
        'Keningau pioneers new farming techniques to enhance rice production',
    publication: 'NST Online',
    imagePath: 'assets/images/startup_farmer.png', // Update to asset path
  ),
  NewsModel(
    title:
        'Keningau pioneers new farming techniques to enhance rice production',
    publication: 'NST Online',
    imagePath: 'assets/images/startup_farmer.png', // Update to asset path
  ),
  NewsModel(
    title:
        'Keningau pioneers new farming techniques to enhance rice production',
    publication: 'NST Online',
    imagePath: 'assets/images/startup_farmer.png', // Update to asset path
  ),
];
