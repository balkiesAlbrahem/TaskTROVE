import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:progectbalkies/helper/myservicesCash.dart';

class Addcomment {
  Myservices myservices = Get.find();
  Future Authaddcomment(int id_post, String comment) async {
    var request = http.Request(
        'POST',
        Uri.parse(
            'http://192.168.43.150:8000/api/AddComment/${id_post}?comment=${comment}&token=${myservices.sharedPreferences.getString('token') as String}'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print("response.statusCode == 200\n");
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }
}
