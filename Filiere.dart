import 'dart:convert';

Filiere FiliereFromJson(String str) => Filiere.fromJson(json.decode(str));
String FiliereModelToJson(Filiere filiere) => json.encode(filiere.toJson());
class Matiere{
   final int id;
   final int heures;
    final String nom;
    final List<Cours> coursById;
  Matiere({required this.id,required this.heures,required this.nom,required this.coursById});
  factory Matiere.fromJson(Map<String,dynamic> json)=>(
  Matiere(id: json['id'], heures: json['heures'], nom: json['nom'],
  coursById: List<Cours>.from(json['coursById'].map((m)=>Cours.fromJson(m))),
         ));
   Map<String, dynamic> toJson() => {
    "id" : id,
    "heures" : heures,
    "nom" : nom,
    "coursById":List<Cours>.from(coursById.map((m) => m.toJson()))
  };

}
class Salle{
   final int id;
   final int numero;
    final String place;
  Salle({required this.id,required this.numero,required this.place});
factory Salle.fromJson(Map<String,dynamic> json)=>(
  Salle(id: json['id'], numero: json['numero'], place: json['place'],
         ));
   Map<String, dynamic> toJson() => {
    "id" : id,
    "numero" : numero,
    "place" : place,
  };

}
class HeureTravaille{
   final int id;
    final String jour;
    final String debit;
    final  String fin;
     HeureTravaille({required this.id,required this.jour,required this.debit,required this.fin});
factory HeureTravaille.fromJson(Map<String, dynamic> json) =>
      HeureTravaille(id: json['id'], jour: json['jour'], debit: json['debit'],
          fin: json['fin']);

      Map<String, dynamic> toJson() => {
    "id" : id,
    "jour" : jour,
    "debit" :debit,
      "fin" :fin,
  };
}

class Professeur{
   final int id;
    final String email;
    final String nom;
    final  String prenom;
    final  List<HeureTravaille> heuretravailleparnumeroByProfesseurheure;
  Professeur({required this.id,required this.email,required this.nom,required this.prenom,required this.heuretravailleparnumeroByProfesseurheure});
  factory Professeur.fromjson(Map<String,dynamic> json){
    return Professeur(id: json['id'],
    email: json['email'],
    nom: json['nom'],
    prenom: json['prenom'],
    heuretravailleparnumeroByProfesseurheure:List<HeureTravaille>.from(json['heuretravailleparnumeroByProfesseurheure'].map((p) => HeureTravaille.fromJson(p))),
    );
}
Map<String, dynamic> toJson() => {
    "id" : id,
    "email" : email,
    "nom" : nom,
    "prenom" : prenom,
    "heuretravailleparnumeroByProfesseurheure" : List<HeureTravaille>.from(heuretravailleparnumeroByProfesseurheure.map((e) => e.toJson())),
  };
}
class Cours{
   final int id;
    final String courstype;
     final int matiere;
    final int professeurheure;
    final int salle;
    final  List<HeureTravaille> heuretravailleparjourByProfesseurheure;
     Cours({required this.heuretravailleparjourByProfesseurheure,  required this.id,required this.courstype,required this.matiere,required this.professeurheure,required this.salle});
 factory Cours.fromJson(Map<String,dynamic> json){
  return Cours(courstype: json['courstype'],
  id: json['id'],
  matiere: json['matiere'],
  professeurheure: json['professeurheure'],
  salle: json['salle'],
  heuretravailleparjourByProfesseurheure:List<HeureTravaille>.from(json['heuretravailleparjourByProfesseurheure'].map((ht) =>HeureTravaille.fromJson(ht))) ,
  );
 }
 Map<String, dynamic> toJson() => {
    "id" : id,
    "courstype" : courstype,
    "matiere" : matiere,
    "professeurheure" : professeurheure,
    "salle":salle,
    "heuretravailleparjourByProfesseurheure" : List<HeureTravaille>.from(heuretravailleparjourByProfesseurheure.map((e) => e.toJson())),
  };

}

class Filiere{
   final int id;
   final String niveau;
    final String anne;
    final String nom;
    final int semestre;
    final String semestreDebit;
    final String semestreFin;
    final  List<Matiere> matieresById;

  Filiere({required this.id,required this.niveau,required this.anne,required this.nom,required this.semestre,required this.semestreDebit,required this.semestreFin,required this.matieresById});
  factory Filiere.fromJson(Map<String, dynamic> json){
    return Filiere(id: json['id'],
    anne: json['anne'],
    niveau: json['niveau'],
    nom: json['nom'],
      semestre: json['semestre'],
    semestreDebit: json['semestreDebit'],
    semestreFin: json['semestreFin'],
    matieresById: List<Matiere>.from(json['matieresById'].map((m)=>Matiere.fromJson(m))),
    );
  }

  Map<String, dynamic> toJson() => {
    "id" : id,
    "niveau" : niveau,
    "anne" : anne,
    "nom" : nom,
    "semestre" : semestre,
    "Semestre_Debit" : semestreDebit,
    "Semestre_Fin" : semestreFin,
    "matieresById" : List<Matiere>.from(matieresById.map((m) => m.toJson()))
  };
}