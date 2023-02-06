import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfesseurDetaille extends StatefulWidget {
  const ProfesseurDetaille({super.key});

  @override
  State<ProfesseurDetaille> createState() => _ProfesseurDetailleState();
}

class _ProfesseurDetailleState extends State<ProfesseurDetaille> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Center(
        child: Center(child: Text("Professeur Details")),
      ),
    );
  }
}
