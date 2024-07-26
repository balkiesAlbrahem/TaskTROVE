// ignore: file_names
import 'package:get/get.dart';
import 'package:progectbalkies/helper/api.dart';
import 'package:progectbalkies/helper/myservicesCash.dart';
import 'package:progectbalkies/models/employprofile.dart';

class ProfileEmployeeServices {
  ///////////////////
  Myservices myservices = Get.find();
  /////////////////////
  Future<employprofile_Model> getProfileEmployeeServices(int id) async {
    // print("1");
    dynamic data = await Api().get(
      url: "http://192.168.43.150:8000/api/ShowEmployeeProfile/${id}",
      token: myservices.sharedPreferences.getString('token') as String,
    );
    //  print("data from profileemployservices ${data}\n");
    employprofile_Model employ = employprofile_Model.fromJson(data);
    //  print("employprofile_Model employ = ===>>> ${employ.id}\n");
    return employ;
  }
}
