
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progectbalkies/helper/myservicesCash.dart';
import 'package:progectbalkies/view/screen/login.dart';
import 'package:progectbalkies/constants/Apptheme.dart';
import 'package:progectbalkies/view/screen/profile.dart';
import 'package:progectbalkies/view/screen/setnewpassword.dart';
import 'package:progectbalkies/view/screen/signup.dart';
import 'package:progectbalkies/view/screen/succesresetpassword.dart';

////////////
///
///
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: Themes.customlighttheme,
      debugShowCheckedModeBanner: false,
      initialRoute: "/login",
      getPages: [
        GetPage(name: "/login", page: () =>  login()),
        GetPage(name: "/sigin", page: () => SignUp()),
        GetPage(name: "/profile", page: () => profile1()),
        // GetPage(name: "/otppage", page: () => otpPage()),
        GetPage(name: "/resetpassword", page: () => ReSetPassword()),
        GetPage(
            name: "/successresetpassword",
            page: () => const SuccessReSetPassword()),
      ],
    );
  }
}
