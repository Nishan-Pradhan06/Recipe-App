class Recipe {
  final String title;
  final String imageUrl;
  final int cookingTime;
  bool isSaved;

  Recipe({
    required this.title,
    required this.imageUrl,
    required this.cookingTime,
    this.isSaved = false,
  });
}
