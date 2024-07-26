import 'package:get/get.dart';
import 'package:progectbalkies/helper/api.dart';
import 'package:progectbalkies/helper/myservicesCash.dart';
import 'package:progectbalkies/models/comment_model.dart';

class AllcommentForPostServices {
 
  Myservices myservices = Get.find();
  Future<List<comment_Model>> getallcommentforpost(int id_post) async {
    print("1");
    List<dynamic> data = await Api().get(
      url: "http://192.168.43.150:8000/api/showComments/${id_post}",
      token: myservices.sharedPreferences.getString('token') as String,
    );
    print("data .================== ${data}");
    List<comment_Model> communtlist = [];
    for (int i = 0; i < data.length; i++) {
      // print(
      //     "mypostModel.fromJson(data[i]) =====>>>>> ${ mypostModel.fromJson(data[i])}\n");
      //  employprofile_Model p= getProfileEmployeeServices(mypostModel.fromJson(data[i]).id_employee);
      communtlist.add(comment_Model.fromJson(data[i]));
    }
    return communtlist;
  }
}
