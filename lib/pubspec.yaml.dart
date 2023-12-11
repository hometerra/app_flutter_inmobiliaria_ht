import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());


}

class Property {
  final String name;
  final String description;

  Property(this.name, this.description);

  Map<String, dynamic> toJson() {
    return {'name': name, 'description': description};
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Propiedades Inmobiliarias'),
        ),
        body: const PropertyList(),
      ),
    );
  }
}

class PropertyList extends StatefulWidget {
  const PropertyList({Key? key});

  @override
  _PropertyListState createState() => _PropertyListState();
}

class _PropertyListState extends State<PropertyList> {
  // Remove Firebase-related code
  List<Property> properties = [];

  @override
  void initState() {
    super.initState();
    // Remove Firebase-related code
  }

  // Remove Firebase-related code
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: properties.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(properties[index].name),
          subtitle: Text(properties[index].description),
        );
      },
    );
  }
}

