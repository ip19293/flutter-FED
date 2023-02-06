import 'dart:math';

import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 76, 150, 78),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: null,
          )
        ],
      ),
      drawer: Drawer(),
      body: Container(
        width: max(100, 400),
      ),
    );
  }
}
