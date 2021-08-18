import 'dart:convert';
import 'package:clubsma/ville.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class VilleApi {
  static Future<List<Ville>> getVilleSuggestions(String query) async {
    final url = Uri.parse(
        'https://www.clubs.ma/api/43e40a97421d18c8afec010c3f738732/city');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List villes = json.decode(response.body);
      return villes.map((json) => Ville.fromJson(json)).where((element) {
        final nameLower = element.name.toLowerCase();
        final queryLower = query.toLowerCase();

        return nameLower.contains(queryLower);
      }).toList();
    } else {
      throw Exception();
    }
  }
}
