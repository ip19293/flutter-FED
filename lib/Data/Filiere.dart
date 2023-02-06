import 'dart:convert';
/// id : 1
/// nom : "Comptabilite 2"
/// niveau : "master"
/// anne : "2022"
/// semestre : 0
/// semestreDebit : "12/10/2022"
/// semestreFin : "1/03/2023"
/// matieresById : [{"id":1,"nom":"python","heures":44,"filiere":1,"coursById":[{"id":1,"courstype":"tp","matiere":1,"professeurheure":1,"salle":1,"heuretravailleparjourByProfesseurheure":{"id":1,"jour":"lundi","debit":8,"fin":10,"professeur":1,"professeurByProfesseur":{"id":1,"nom":"sidi","prenom":"yahya","email":"sidi"}},"salleBySalle":{"id":1,"numero":1,"place":45}},{"id":6,"courstype":"tp","matiere":1,"professeurheure":3,"salle":1,"heuretravailleparjourByProfesseurheure":{"id":3,"jour":"lundi","debit":8,"fin":10,"professeur":2,"professeurByProfesseur":{"id":2,"nom":"salem","prenom":"yahya","email":"salem"}},"salleBySalle":{"id":1,"numero":1,"place":45}},{"id":10,"courstype":"cours","matiere":1,"professeurheure":5,"salle":2,"heuretravailleparjourByProfesseurheure":{"id":5,"jour":"mardi","debit":8,"fin":10,"professeur":1,"professeurByProfesseur":{"id":1,"nom":"sidi","prenom":"yahya","email":"sidi"}},"salleBySalle":{"id":2,"numero":2,"place":35}}]},{"id":2,"nom":"algorithme","heures":34,"filiere":1,"coursById":[{"id":9,"courstype":"tp","matiere":2,"professeurheure":4,"salle":2,"heuretravailleparjourByProfesseurheure":{"id":4,"jour":"lundi","debit":10,"fin":12,"professeur":1,"professeurByProfesseur":{"id":1,"nom":"sidi","prenom":"yahya","email":"sidi"}},"salleBySalle":{"id":2,"numero":2,"place":35}}]}]

Filiere filiereFromJson(String str) => Filiere.fromJson(json.decode(str));
String filiereToJson(Filiere data) => json.encode(data.toJson());
class Filiere {
  Filiere({
      num? id, 
      String? nom, 
      String? niveau, 
      String? anne, 
      num? semestre, 
      String? semestreDebit, 
      String? semestreFin, 
      List<MatieresById>? matieresById,}){
    _id = id;
    _nom = nom;
    _niveau = niveau;
    _anne = anne;
    _semestre = semestre;
    _semestreDebit = semestreDebit;
    _semestreFin = semestreFin;
    _matieresById = matieresById;
}

  Filiere.fromJson(dynamic json) {
    _id = json['id'];
    _nom = json['nom'];
    _niveau = json['niveau'];
    _anne = json['anne'];
    _semestre = json['semestre'];
    _semestreDebit = json['semestreDebit'];
    _semestreFin = json['semestreFin'];
    if (json['matieresById'] != null) {
      _matieresById = [];
      json['matieresById'].forEach((v) {
        _matieresById?.add(MatieresById.fromJson(v));
      });
    }
  }
  num? _id;
  String? _nom;
  String? _niveau;
  String? _anne;
  num? _semestre;
  String? _semestreDebit;
  String? _semestreFin;
  List<MatieresById>? _matieresById;
Filiere copyWith({  num? id,
  String? nom,
  String? niveau,
  String? anne,
  num? semestre,
  String? semestreDebit,
  String? semestreFin,
  List<MatieresById>? matieresById,
}) => Filiere(  id: id ?? _id,
  nom: nom ?? _nom,
  niveau: niveau ?? _niveau,
  anne: anne ?? _anne,
  semestre: semestre ?? _semestre,
  semestreDebit: semestreDebit ?? _semestreDebit,
  semestreFin: semestreFin ?? _semestreFin,
  matieresById: matieresById ?? _matieresById,
);
  num? get id => _id;
  String? get nom => _nom;
  String? get niveau => _niveau;
  String? get anne => _anne;
  num? get semestre => _semestre;
  String? get semestreDebit => _semestreDebit;
  String? get semestreFin => _semestreFin;
  List<MatieresById>? get matieresById => _matieresById;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['nom'] = _nom;
    map['niveau'] = _niveau;
    map['anne'] = _anne;
    map['semestre'] = _semestre;
    map['semestreDebit'] = _semestreDebit;
    map['semestreFin'] = _semestreFin;
    if (_matieresById != null) {
      map['matieresById'] = _matieresById?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1
/// nom : "python"
/// heures : 44
/// filiere : 1
/// coursById : [{"id":1,"courstype":"tp","matiere":1,"professeurheure":1,"salle":1,"heuretravailleparjourByProfesseurheure":{"id":1,"jour":"lundi","debit":8,"fin":10,"professeur":1,"professeurByProfesseur":{"id":1,"nom":"sidi","prenom":"yahya","email":"sidi"}},"salleBySalle":{"id":1,"numero":1,"place":45}},{"id":6,"courstype":"tp","matiere":1,"professeurheure":3,"salle":1,"heuretravailleparjourByProfesseurheure":{"id":3,"jour":"lundi","debit":8,"fin":10,"professeur":2,"professeurByProfesseur":{"id":2,"nom":"salem","prenom":"yahya","email":"salem"}},"salleBySalle":{"id":1,"numero":1,"place":45}},{"id":10,"courstype":"cours","matiere":1,"professeurheure":5,"salle":2,"heuretravailleparjourByProfesseurheure":{"id":5,"jour":"mardi","debit":8,"fin":10,"professeur":1,"professeurByProfesseur":{"id":1,"nom":"sidi","prenom":"yahya","email":"sidi"}},"salleBySalle":{"id":2,"numero":2,"place":35}}]

MatieresById matieresByIdFromJson(String str) => MatieresById.fromJson(json.decode(str));
String matieresByIdToJson(MatieresById data) => json.encode(data.toJson());
class MatieresById {
  MatieresById({
      num? id, 
      String? nom, 
      num? heures, 
      num? filiere, 
      List<CoursById>? coursById,}){
    _id = id;
    _nom = nom;
    _heures = heures;
    _filiere = filiere;
    _coursById = coursById;
}

  MatieresById.fromJson(dynamic json) {
    _id = json['id'];
    _nom = json['nom'];
    _heures = json['heures'];
    _filiere = json['filiere'];
    if (json['coursById'] != null) {
      _coursById = [];
      json['coursById'].forEach((v) {
        _coursById?.add(CoursById.fromJson(v));
      });
    }
  }
  num? _id;
  String? _nom;
  num? _heures;
  num? _filiere;
  List<CoursById>? _coursById;
MatieresById copyWith({  num? id,
  String? nom,
  num? heures,
  num? filiere,
  List<CoursById>? coursById,
}) => MatieresById(  id: id ?? _id,
  nom: nom ?? _nom,
  heures: heures ?? _heures,
  filiere: filiere ?? _filiere,
  coursById: coursById ?? _coursById,
);
  num? get id => _id;
  String? get nom => _nom;
  num? get heures => _heures;
  num? get filiere => _filiere;
  List<CoursById>? get coursById => _coursById;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['nom'] = _nom;
    map['heures'] = _heures;
    map['filiere'] = _filiere;
    if (_coursById != null) {
      map['coursById'] = _coursById?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1
/// courstype : "tp"
/// matiere : 1
/// professeurheure : 1
/// salle : 1
/// heuretravailleparjourByProfesseurheure : {"id":1,"jour":"lundi","debit":8,"fin":10,"professeur":1,"professeurByProfesseur":{"id":1,"nom":"sidi","prenom":"yahya","email":"sidi"}}
/// salleBySalle : {"id":1,"numero":1,"place":45}

CoursById coursByIdFromJson(String str) => CoursById.fromJson(json.decode(str));
String coursByIdToJson(CoursById data) => json.encode(data.toJson());
class CoursById {
  CoursById({
      num? id, 
      String? courstype, 
      num? matiere, 
      num? professeurheure, 
      num? salle, 
      HeuretravailleparjourByProfesseurheure? heuretravailleparjourByProfesseurheure, 
      SalleBySalle? salleBySalle,}){
    _id = id;
    _courstype = courstype;
    _matiere = matiere;
    _professeurheure = professeurheure;
    _salle = salle;
    _heuretravailleparjourByProfesseurheure = heuretravailleparjourByProfesseurheure;
    _salleBySalle = salleBySalle;
}

  CoursById.fromJson(dynamic json) {
    _id = json['id'];
    _courstype = json['courstype'];
    _matiere = json['matiere'];
    _professeurheure = json['professeurheure'];
    _salle = json['salle'];
    _heuretravailleparjourByProfesseurheure = json['heuretravailleparjourByProfesseurheure'] != null ? HeuretravailleparjourByProfesseurheure.fromJson(json['heuretravailleparjourByProfesseurheure']) : null;
    _salleBySalle = json['salleBySalle'] != null ? SalleBySalle.fromJson(json['salleBySalle']) : null;
  }
  num? _id;
  String? _courstype;
  num? _matiere;
  num? _professeurheure;
  num? _salle;
  HeuretravailleparjourByProfesseurheure? _heuretravailleparjourByProfesseurheure;
  SalleBySalle? _salleBySalle;
CoursById copyWith({  num? id,
  String? courstype,
  num? matiere,
  num? professeurheure,
  num? salle,
  HeuretravailleparjourByProfesseurheure? heuretravailleparjourByProfesseurheure,
  SalleBySalle? salleBySalle,
}) => CoursById(  id: id ?? _id,
  courstype: courstype ?? _courstype,
  matiere: matiere ?? _matiere,
  professeurheure: professeurheure ?? _professeurheure,
  salle: salle ?? _salle,
  heuretravailleparjourByProfesseurheure: heuretravailleparjourByProfesseurheure ?? _heuretravailleparjourByProfesseurheure,
  salleBySalle: salleBySalle ?? _salleBySalle,
);
  num? get id => _id;
  String? get courstype => _courstype;
  num? get matiere => _matiere;
  num? get professeurheure => _professeurheure;
  num? get salle => _salle;
  HeuretravailleparjourByProfesseurheure? get heuretravailleparjourByProfesseurheure => _heuretravailleparjourByProfesseurheure;
  SalleBySalle? get salleBySalle => _salleBySalle;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['courstype'] = _courstype;
    map['matiere'] = _matiere;
    map['professeurheure'] = _professeurheure;
    map['salle'] = _salle;
    if (_heuretravailleparjourByProfesseurheure != null) {
      map['heuretravailleparjourByProfesseurheure'] = _heuretravailleparjourByProfesseurheure?.toJson();
    }
    if (_salleBySalle != null) {
      map['salleBySalle'] = _salleBySalle?.toJson();
    }
    return map;
  }

}

/// id : 1
/// numero : 1
/// place : 45

SalleBySalle salleBySalleFromJson(String str) => SalleBySalle.fromJson(json.decode(str));
String salleBySalleToJson(SalleBySalle data) => json.encode(data.toJson());
class SalleBySalle {
  SalleBySalle({
      num? id, 
      num? numero, 
      num? place,}){
    _id = id;
    _numero = numero;
    _place = place;
}

  SalleBySalle.fromJson(dynamic json) {
    _id = json['id'];
    _numero = json['numero'];
    _place = json['place'];
  }
  num? _id;
  num? _numero;
  num? _place;
SalleBySalle copyWith({  num? id,
  num? numero,
  num? place,
}) => SalleBySalle(  id: id ?? _id,
  numero: numero ?? _numero,
  place: place ?? _place,
);
  num? get id => _id;
  num? get numero => _numero;
  num? get place => _place;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['numero'] = _numero;
    map['place'] = _place;
    return map;
  }

}

/// id : 1
/// jour : "lundi"
/// debit : 8
/// fin : 10
/// professeur : 1
/// professeurByProfesseur : {"id":1,"nom":"sidi","prenom":"yahya","email":"sidi"}

HeuretravailleparjourByProfesseurheure heuretravailleparjourByProfesseurheureFromJson(String str) => HeuretravailleparjourByProfesseurheure.fromJson(json.decode(str));
String heuretravailleparjourByProfesseurheureToJson(HeuretravailleparjourByProfesseurheure data) => json.encode(data.toJson());
class HeuretravailleparjourByProfesseurheure {
  HeuretravailleparjourByProfesseurheure({
      num? id, 
      String? jour, 
      num? debit, 
      num? fin, 
      num? professeur, 
      ProfesseurByProfesseur? professeurByProfesseur,}){
    _id = id;
    _jour = jour;
    _debit = debit;
    _fin = fin;
    _professeur = professeur;
    _professeurByProfesseur = professeurByProfesseur;
}

  HeuretravailleparjourByProfesseurheure.fromJson(dynamic json) {
    _id = json['id'];
    _jour = json['jour'];
    _debit = json['debit'];
    _fin = json['fin'];
    _professeur = json['professeur'];
    _professeurByProfesseur = json['professeurByProfesseur'] != null ? ProfesseurByProfesseur.fromJson(json['professeurByProfesseur']) : null;
  }
  num? _id;
  String? _jour;
  num? _debit;
  num? _fin;
  num? _professeur;
  ProfesseurByProfesseur? _professeurByProfesseur;
HeuretravailleparjourByProfesseurheure copyWith({  num? id,
  String? jour,
  num? debit,
  num? fin,
  num? professeur,
  ProfesseurByProfesseur? professeurByProfesseur,
}) => HeuretravailleparjourByProfesseurheure(  id: id ?? _id,
  jour: jour ?? _jour,
  debit: debit ?? _debit,
  fin: fin ?? _fin,
  professeur: professeur ?? _professeur,
  professeurByProfesseur: professeurByProfesseur ?? _professeurByProfesseur,
);
  num? get id => _id;
  String? get jour => _jour;
  num? get debit => _debit;
  num? get fin => _fin;
  num? get professeur => _professeur;
  ProfesseurByProfesseur? get professeurByProfesseur => _professeurByProfesseur;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['jour'] = _jour;
    map['debit'] = _debit;
    map['fin'] = _fin;
    map['professeur'] = _professeur;
    if (_professeurByProfesseur != null) {
      map['professeurByProfesseur'] = _professeurByProfesseur?.toJson();
    }
    return map;
  }

}

/// id : 1
/// nom : "sidi"
/// prenom : "yahya"
/// email : "sidi"

ProfesseurByProfesseur professeurByProfesseurFromJson(String str) => ProfesseurByProfesseur.fromJson(json.decode(str));
String professeurByProfesseurToJson(ProfesseurByProfesseur data) => json.encode(data.toJson());
class ProfesseurByProfesseur {
  ProfesseurByProfesseur({
      num? id, 
      String? nom, 
      String? prenom, 
      String? email,}){
    _id = id;
    _nom = nom;
    _prenom = prenom;
    _email = email;
}

  ProfesseurByProfesseur.fromJson(dynamic json) {
    _id = json['id'];
    _nom = json['nom'];
    _prenom = json['prenom'];
    _email = json['email'];
  }
  num? _id;
  String? _nom;
  String? _prenom;
  String? _email;
ProfesseurByProfesseur copyWith({  num? id,
  String? nom,
  String? prenom,
  String? email,
}) => ProfesseurByProfesseur(  id: id ?? _id,
  nom: nom ?? _nom,
  prenom: prenom ?? _prenom,
  email: email ?? _email,
);
  num? get id => _id;
  String? get nom => _nom;
  String? get prenom => _prenom;
  String? get email => _email;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['nom'] = _nom;
    map['prenom'] = _prenom;
    map['email'] = _email;
    return map;
  }

}