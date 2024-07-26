// ignore: camel_case_types
class comment_Model {
  final int id;
  final int id_employee;
  final int id_post;
  final String comment;
  final String created_at;

  comment_Model({
    required this.id_employee,
    required this.id_post,
    required this.comment,
    required this.created_at,
    required this.id,
  });

  factory comment_Model.fromJson(jsonData) {
    return comment_Model(
        id_post: jsonData['post_id'],
        id_employee: jsonData['employe_id'],
        created_at: jsonData['created_at'],
        comment: jsonData['comment'],
        id: jsonData['id']);
  }
}
