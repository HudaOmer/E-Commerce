class CategoryModel {
  String? name, image;

  CategoryModel({this.name, this.image});

  CategoryModel.fromJson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }
    image = map['image'];
    name = map['name'];
  }

  toJson() {
    return {
      'image': image,
      'name': name,
    };
  }
}
