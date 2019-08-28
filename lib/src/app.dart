import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import './models/image_model.dart';
import './widgets/image_list.dart';

class App extends StatefulWidget {
  @override
  createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = [];

  fetchImage() async {
    counter++;
    var response =
        await http.get('https://jsonplaceholder.typicode.com/photos/$counter');
    var imageModel = ImageModel.fromJson(json.decode(response.body));

    setState(() {
      images.add(imageModel);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Test App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                'Lets see some images!',
              ),
            ),
          ),
          body: ImageList(images),
          floatingActionButton: FloatingActionButton(
            onPressed: fetchImage,
            child: Icon(
              Icons.add,
            ),
          ),
        ),
      ),
    );
  }
}
