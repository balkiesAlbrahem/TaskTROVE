import 'package:get/get.dart';
import 'package:progectbalkies/helper/api.dart';
import 'package:progectbalkies/helper/myservicesCash.dart';
import 'package:progectbalkies/models/mypost.dart';

class OnlyEmployeepostServices {
  /////////////////////
  // Future<employprofile_Model> getProfileEmployeeServices(int id) async {
  //   print("1");
  //   employprofile_Model data = await Api().get(
  //     url: "http://192.168.43.150:8000/api/ShowEmployeeProfile/${id}",
  //     token: myservices.sharedPreferences.getString('token') as String,
  //   );
  //   employprofile_Model employ = employprofile_Model.fromJson(data);
  //   return employ;
  // }

  ////////////
  Myservices myservices = Get.find();
  Future<List<mypostModel>> getOnlyEmployeepost(int EmployeeId) async {
    print("1");
    List<dynamic> data = await Api().get(
      url: "http://192.168.43.150:8000/api/showPost/${EmployeeId}",
      token: myservices.sharedPreferences.getString('token') as String,
    );
    print("data .================== ${data}");
    List<mypostModel> postslist = [];
    for (int i = 0; i < data.length; i++) {
      // print(
      //     "mypostModel.fromJson(data[i]) =====>>>>> ${ mypostModel.fromJson(data[i])}\n");
      //  employprofile_Model p= getProfileEmployeeServices(mypostModel.fromJson(data[i]).id_employee);
      postslist.add(mypostModel.fromJson(data[i]));
    }
    return postslist;
  }
}
