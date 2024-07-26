class job_Model {
  final int id;
  final String title;
  final String price;
  final String description;
  final String category;
  final String image;
  job_Model(
      {required this.id,
      required this.title,
      required this.description,
      required this.image,
      required this.category,
      required this.price});

  factory job_Model.fromJson(jsonData) {
    return job_Model(
        id: jsonData['id'],
        title: jsonData['title'],
        description: jsonData['descriotion'],
        image: jsonData['image'],
        price: jsonData['price'],
        category: jsonData['category']);
  }
}
