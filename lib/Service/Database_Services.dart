import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Model/Filiere.dart';
import 'Global.dart';

class DatabaseServices{
  /** 
  static Future<Filiere> addClasse(String nom,String niveau,String anne)async{
   Map data ={
     "nom":nom,
     "niveau":niveau,
     "anne":anne,
   };
   var body = json.encode(data);
   var url = Uri.parse('$baseURL/add');
   http.Response response = await http.post(
     url,
     headers: heander,
     body: body,
   );
   print(response.body);
   Map responseMap = jsonDecode(response.body);
   Filiere classe = Filiere.fromJson(responseMap);
   return classe;
   
  }
  */




 
}