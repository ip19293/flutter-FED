import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Contoller/loadData.dart';
import '../Data/flatere_list.dart';
import 'ChowData.dart';

class DisplayData extends StatelessWidget {
  DisplayData({Key? key}) : super(key: key);
  LoadDataController fifiereCharacterController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: (Center(
            child: Obx(
      () => fifiereCharacterController.isloading.value == true
          ? ListView.builder(
              itemCount: FiliereList.filierelist.length,
              itemBuilder: (context, index) {
                var filiereCharacterData = FiliereList.filierelist[index];

                return FiliereCharacterTitre(
                  filiereCharacter: filiereCharacterData,
                );
              },
            )
          : CircularProgressIndicator(),
    ))));
  }
}
/** 
 Widget build(BuildContext context) {
    return SingleChildScrollView( child:
      Column(
      children: <Widget>[
        for (var i = 0; i < FiliereList.filierelist.length; i++)
          Column(
            children: <Widget>[
              Text("Name: ${FiliereList.filierelist[i].nom}"),
              Text("Age: ${FiliereList.filierelist[i].niveau}"),
              if( FiliereList.filierelist[i].matieresById !=null ?.iterator.moveNext())
               for (var m=0; m < FiliereList.filierelist[i].matieresById?.length; m++)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Address:"),
                  Text("  Street: ${jsonData.matieresById.last.filiere}"),
                  Text("  City: ${jsonData.matieresById.}"),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Education:"),
                  Text("  Degree: ${jsonData['education']['degree']}"),
                  Text("  University: ${jsonData['education']['university']}"),
                ],
              ),
            ],
          ),
      ],
    );
  }
  */