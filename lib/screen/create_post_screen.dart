import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CreatePostScreen extends StatelessWidget {
  CreatePostScreen({Key? key}) : super(key: key);

  final TextEditingController titleController = TextEditingController();
  final TextEditingController authorController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  var snackBar = const SnackBar(
    content: Text('Created successfully'),
  );

  var snackBarErr = const SnackBar(
    content: Text('Created failed'),
  );

  void createPost(String title, String author, context) async {
    Map<String, String> bodyRequest = {'title': title, 'author': author};
    var url = Uri.parse('http://localhost:3000/posts');
    var response = await http.post(url, body: bodyRequest);

    if (response.statusCode == 201) {
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      clearText();
      print('created successfully');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(snackBarErr);
      print('created failed');
    }
  }

  void clearText() {
    titleController.text = '';
    authorController.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Create Post'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Form(
          key: _formKey,
          child: Column(children: [
            TextFormField(
              controller: titleController,
              decoration: const InputDecoration(hintText: 'Title'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: authorController,
              decoration: const InputDecoration(hintText: 'author'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Row(children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    String title = titleController.text;
                    String author = authorController.text;

                    print('title $title');
                    print('author $author');

                    // Validate returns true if the form is valid, or false otherwise.
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      createPost(title, author, context);
                    }
                  },
                  child: const Text('Save'),
                ),
              )
            ])
          ]),
        ),
      ),
    );
  }
}
