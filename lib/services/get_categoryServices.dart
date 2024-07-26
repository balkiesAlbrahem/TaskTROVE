// // ignore_for_file: non_constant_identifier_names

// import 'package:progectbalkies/helper/api.dart';
// import 'package:progectbalkies/models/job_model.dart';

// // ignore: camel_case_types
// class categoryServices {
//   Future<List<job_Model>> getCategoryJobs(
//       {required String category_name}) async {
//     List<dynamic> data = await Api()
//         // ignore: missing_required_param
//         .get(url: "https://fakestoreapi.com/products/category/$category_name");

//     List<job_Model> jobsList = [];
//     for (int i = 0; i < data.length; i++) {
//       jobsList.add(
//         job_Model.fromJson(data[i]),
//       );
//     }
//     return jobsList;
//   }
// }
