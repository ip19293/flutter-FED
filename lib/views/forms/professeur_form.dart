import 'package:flutter/material.dart';

import 'package:teste_app/views/forms/professeur_detail.dart';

class ProfesseurForm extends StatefulWidget {
  const ProfesseurForm({super.key});

  @override
  State<ProfesseurForm> createState() => _ProfesseurFormState();
}

class _ProfesseurFormState extends State<ProfesseurForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Center(
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ProfesseurDetaille();
            }));
          },
          child: Text(
            "save".toUpperCase(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
