import 'package:get/state_manager.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:teste_app/Data/flatere_list.dart';
import '../Data/Filiere.dart';
import 'package:get/get.dart';

class LoadDataController extends GetxController {
  var isloading = false.obs;
  List<CoursById> cours = [];
  List<Filiere> fl = [];
  Future<void> loadData() async {
    final response1 =
        await http.get(Uri.parse('http://192.168.165.1:8080/cours/all'));
    final response =
        await http.get(Uri.parse('http://192.168.165.1:8080/filiere/all'));
    var data = jsonDecode(response.body.toString());
    var data1 = jsonDecode(response1.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> i in data) {
        print(i['nom']);
        fl.add(Filiere.fromJson(i));
        //FiliereList.filierelist.add();
      }
      FiliereList.courslist =
          List.from(data1).map((e) => CoursById.fromJson(e)).toList();
      FiliereList.filierelist =
          List.from(data).map((e) => Filiere.fromJson(e)).toList();
      isloading.value = true;
      //Get.to(()=>ChowData());
      print(response.body);
    } else {
      Get.snackbar("Error", "Backend connection faild!");
    }
  }
}
