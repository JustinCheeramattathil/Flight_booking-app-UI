import 'package:flutter/material.dart';

class SearchProvider extends ChangeNotifier {
  List<String> allCompanies = [
    'Air India',
    'Indigo',
    'Air Arabia',
    'Go First',
    'Swiss',
  ];
  List<String> filteredCompanies = [];
  Future<void> searchcompany(String query) async{
     filteredCompanies = await allCompanies
        .where((company) => company.toLowerCase().contains(query.toLowerCase()))
        .toList();
    notifyListeners();
  }
}
