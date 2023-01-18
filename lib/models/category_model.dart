class CategoryModel {
  String? name;

  CategoryModel({
    this.name,
  });
}

final List<CategoryModel> categories = [
  CategoryModel(name: 'Full Time'),
  CategoryModel(name: 'Part Time'),
  CategoryModel(name: 'Freelance'),
  CategoryModel(name: 'Internship'),
  CategoryModel(name: 'Remote'),
];
