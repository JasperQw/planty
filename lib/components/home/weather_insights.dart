class InsightsModel {
  final String title;
  final String publication;
  final String imagePath; // Change the type to String

  InsightsModel({
    required this.title,
    required this.publication,
    required this.imagePath,
  });
}

List<InsightsModel> insightsData = [
  InsightsModel(
    title: 'Generate higher crops yield during hot season',
    publication: 'Plant Lady Fingers',
    imagePath: 'assets/images/startup_farmer.png', // Update to asset path
  ),
  InsightsModel(
    title: 'Potential harmful pest such as alphids might harm your plants',
    publication: 'Protect Your Plants From Pests Now',
    imagePath: 'assets/images/startup_farmer.png', // Update to asset path
  ),
  InsightsModel(
    title:
        'Watering your plants at the right time can help to increase crops yield',
    publication: 'Water Your Plants Now',
    imagePath: 'assets/images/startup_farmer.png', // Update to asset path
  ),
];
