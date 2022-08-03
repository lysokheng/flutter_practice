import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:learning_flutter/main.dart';
import 'package:http/http.dart' as http;

class API extends StatelessWidget {
  const API({Key? key}) : super(key: key);

  Future<List<dynamic>> fetchUser() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    return jsonDecode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
      ),
      body: FutureBuilder(
        future: fetchUser(),
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return const Center(
              child: Text('Error'),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Text(snapshot.data![index]['id'].toString()),
                      title: Text(snapshot.data![index]['title']),
                      subtitle: Text(snapshot.data![index]['body']),
                    ),
                  );
                },
              );
            } else {
              return const Center(
                child: Text('no data available'),
              );
            }
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
