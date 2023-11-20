class CategoryModel {
  final int id;
  final String name;

  CategoryModel({required this.id, required this.name});
}

final List<CategoryModel> listCategory = [
  CategoryModel(id: 1, name: 'Releasing soon'),
  CategoryModel(id: 2, name: 'Trending'),
  CategoryModel(id: 3, name: 'New Collection'),
];
