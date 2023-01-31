import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  
  Size get preferredSize => new Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
   return AppBar(
  backgroundColor: Colors.white.withOpacity(0),
  //elevation: 0,
  leading: IconButton(
   icon: Icon(Icons.menu,
   color: Color.fromARGB(255, 139, 44, 44),
   ),
   onPressed: null,
  
  ),
  actions: [
  IconButton(
   icon: Icon(Icons.add,
   color: Color.fromARGB(255, 139, 44, 44),
   ),
   onPressed: null,
  
  )

  ],
   );
  }
}
