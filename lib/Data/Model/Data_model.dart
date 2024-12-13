class DataModel {
  final int id;
  late String name;
  late String description;
  final double? price;
  late String image_url;

  DataModel(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.image_url});

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        price: json['price'],
        image_url: json['image_url']);
  }

  Map<String, dynamic> toJson(){
    return {
      'id' : id,
      'name' : name,
      'description' : description,
      'price' : price,
      'image_url' : image_url
    };
  }
}
