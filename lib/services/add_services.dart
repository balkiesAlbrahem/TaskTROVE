// import 'package:progectbalkies/helper/api.dart';
// import 'package:progectbalkies/models/job_model.dart';

// // ignore: camel_case_types
// class add_services_prodect {
//   Future<job_Model> addProdect(
//       {required String title,
//       required String price,
//       required String description,
//       required String image,
//       required String category}) async {
//     Map<String, dynamic> data = await Api().post(
//       url: "http://fakestoreapi.com/products",
//       body: {
//         'title': title,
//         'price': price,
//         'description': description,
//         'image': image,
//         'category': category,
//       },
//       token: '',
//     );
//     return job_Model.fromJson(data);
//   }
// }
