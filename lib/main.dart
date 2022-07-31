import 'package:flutter/material.dart';
import 'package:learning_flutter/ecommerce_screen/get_start_screen.dart';
import 'package:learning_flutter/other/image_picker_screen.dart';

import 'other/collection_pic.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        canvasColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: const ImagePickerScreen(),
    );
  }
}
