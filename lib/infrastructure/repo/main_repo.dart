import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../domain/interface/main_facade.dart';
import '../../domain/models/university/university_model.dart';

class MainRepo implements MainFacade {
  @override
  getInfo({required String name}) async {
    try {
      var res = await http.get(
          Uri.parse("http://universities.hipolabs.com/search?country=$name"));
      return List<University>.from(json.decode(res.body).map((e) => University.fromJson(e)));
    } catch (e) {
      debugPrint("error: $e");
    }
  }
}
