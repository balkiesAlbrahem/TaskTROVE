

//////////////////////////+_+;
class mypostModel {
  final int id;
  final int id_employee;
  final String post;
  final String image;
  final String created_at;
  mypostModel({
    required this.id,
    required this.id_employee,
    required this.post,
    required this.image,
    required this.created_at,
  });

  factory mypostModel.fromJson(jsonData) {
    return mypostModel(
        id: jsonData['id'],
        id_employee: jsonData['employe_id'],
        post: jsonData['Post'],
        image: jsonData['image'],
        created_at: jsonData['created_at']);
  }
}
