import 'dart:convert';
import 'dart:developer';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kaplas_internship/news_page/item.dart';

class News extends StatelessWidget {
  News({Key? key}) : super(key: key);

  Future<List<dynamic>> getNews() async {
    var resp = await http.get(Uri.parse('https://api.first.org/data/v1/news'));
    var map = Map<String, dynamic>.from(json.decode(resp.body));
    var list = map['data'] as List;
    return list;
  }

  List<Map<String, dynamic>> convert(List l) {
    List<Map<String, dynamic>> data = [];
    for (int i = 0; i < l.length; i++) {
      data.add(Map<String, dynamic>.from(l[i]));
    }
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            future: getNews(),
            builder: (context, snap) {
              if (snap.connectionState == ConnectionState.done &&
                  snap.data != null) {
                var data = convert(snap.data as List);
                return ListView(
                  children: data.map((e) => Item(map: e)).toList(),
                );
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            }));
  }
}
