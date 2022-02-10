import 'package:flutter/cupertino.dart';

class Transaction {
  final String id;
  final String title;
  final double amount; // num amount is good too but more general
  final DateTime date;

  /*
  Eng :
  constructor will allow to use this "blueprint" like building a house, you do a blueprint before.
  NB: For using @required, you must change the version SDK in pubspec.yaml into a 2.11.0 instead of 2.12.0
  Fr :
  constructeur est un schéma et permettra d'être utilisé pour construire les transactions.
  NB: for utiliser @required, on doit changer la version du SDK dans pubspec.yaml en 2.11.0 au lieu de 2.12.0
  */

  Transaction({
    @required this.id,
    @required this.title,
    @required this.amount,
    @required this.date
  });
}