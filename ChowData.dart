import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:teste_app/Contoller/loadData.dart';
import 'package:teste_app/Data/Filiere.dart';
import 'package:teste_app/Model/Filiere.dart';

import '../Data/flatere_list.dart';

class ChowData extends StatelessWidget{
   ChowData({Key? key}):super(key: key);
   LoadDataController fifiereCharacterController= Get.find();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body:(Center(child: Obx(() =>
     fifiereCharacterController.isloading.value == true?
     ListView.builder(
      itemCount: FiliereList.filierelist.length ,
      itemBuilder:(context,index){
        var filiereCharacterData=FiliereList.filierelist[index];
        
        return FiliereCharacterTitre(filiereCharacter: filiereCharacterData,);
      },
      )
    :CircularProgressIndicator(),)
   )));
  }
}

class FiliereCharacterTitre extends StatelessWidget {
  final filiereCharacter;

  const FiliereCharacterTitre({super.key, this.filiereCharacter});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( 
      
      physics: BouncingScrollPhysics(),
     child:Container(height: 580,
              width: 160,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 50, 68, 51),
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue,
                      Colors.black,
                    ]),
              ),
              margin: EdgeInsets.all(10),
            child:Stack(children: [
             Positioned(
              top: 10,
              left: 15,
             child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Text(
                      filiereCharacter.nom,
                      style:  const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),
                    ),
                  Text(
                      filiereCharacter.niveau,
                      style:  const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),
                    ), 
                    SizedBox(width: 100,),
               ],
             ),
              ),
          Positioned(
              top: 10,
              right: 15,
             child: Row(
               children: [
               Text(filiereCharacter.anne,
                      style:  const TextStyle(color: Colors.white,fontWeight: FontWeight.w100,fontSize: 15),  ),   ]
             )
             ),
             const SizedBox(height: 10,),
               Positioned(
               height: 250,
              width: 350,
              child: ListView.builder(
                itemCount: filiereCharacter.matieresById.length,
                itemBuilder: (context, index) {
                  var matieres = filiereCharacter.matieresById[index];
                  if(matieres.nom.toString() !=''){
                    Positioned(child:SingleChildScrollView(child:Row(children:[Center(child:
                      Container(color: Colors.red,height:100,width:200 ,child:
                               Text(matieres.nom.toString())
                   )) ]
                   )
                   )
                   );
                               }
                  return Text('vide');
                }
                    ),
                    )

            ]
           
       )
      

       )) ;
  }
}