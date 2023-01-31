import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:teste_app/Contoller/loadData.dart';
import 'package:teste_app/views/ChowData.dart';

class HomePage extends StatelessWidget {
  LoadDataController loadDataController=Get.put(LoadDataController());
   HomePage({Key? key}) : super(key:key);
 
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
     ElevatedButton(onPressed: () {
     
     Get.to(() => ChowData());
      loadDataController.loadData();
      }, 
     child: Text("ok"))
      ],)
    )

    );}
}