import 'package:get/get.dart';
import 'package:progectbalkies/helper/api.dart';
import 'package:progectbalkies/helper/myservicesCash.dart';
import 'package:progectbalkies/models/employprofile.dart';

class AllMyFreinds {
  ////////////
  Myservices myservices = Get.find();
  Future<List<employprofile_Model>> getallMyFriends() async {
    print("1");
    List<dynamic> data = await Api().get(
      url: "http://192.168.43.150:8000/api/myFreind",
      token: myservices.sharedPreferences.getString('token') as String,
    );
    print("data .================== ${data}");
    List<employprofile_Model> Myfreindslist = [];
    for (int i = 0; i < data.length; i++) {
      // print(
      //     "mypostModel.fromJson(data[i]) =====>>>>> ${ mypostModel.fromJson(data[i])}\n");
      //  employprofile_Model p= getProfileEmployeeServices(mypostModel.fromJson(data[i]).id_employee);
      Myfreindslist.add(employprofile_Model.fromJson(data[i]));
    }
    return Myfreindslist;
  }
}
