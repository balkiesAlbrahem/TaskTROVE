import 'package:get/get.dart';
import 'package:progectbalkies/helper/api.dart';
import 'package:progectbalkies/helper/myservicesCash.dart';
import 'package:progectbalkies/models/jobModel.dart';

class Alljob {
  ////////////
  Myservices myservices = Get.find();
  Future<List<jobModel>> getalljob() async {
    print("1");
    List<dynamic> data = await Api().get(
      url: "http://192.168.43.150:8000/api/ShowAllJobs",
      token: myservices.sharedPreferences.getString('token') as String,
    );
    print("data .================== ${data}");
    List<jobModel> joblist = [];
    for (int i = 0; i < data.length; i++) {
      // print(
      //     "mypostModel.fromJson(data[i]) =====>>>>> ${ mypostModel.fromJson(data[i])}\n");
      //  employprofile_Model p= getProfileEmployeeServices(mypostModel.fromJson(data[i]).id_employee);
      joblist.add(jobModel.fromJson(data[i]));
    }
    return joblist;
  }
}
