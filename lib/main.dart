import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Inmobiliaria HT'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            PropertySearchBar(),
            Expanded(
              child: PropertyList(),
            ),
          ],
        ),
      ),
    );
  }
}

class PropertyList extends StatelessWidget {
  // Ejemplo de lista de propiedades
  final List<Property> properties = [
    Property('Casa en Venta en Parque Oaxaca', 'Casa Amplia con Roof Garden y Family Room, cuenta con 3 Recamaras con 4 Baños',
        'https://hometerrabr.com/wp-content/uploads/2023/11/20231111_133724.jpg'),
    Property('Casa en Venta en Parque Sonora', 'Acabados de Primera Calidad Diseño Unico en Puebla, 3 Recamaras con Baño cada una',
        'https://hometerrabr.com/wp-content/uploads/2023/11/20231113_185112.jpg'),
    Property('Casa en Venta en Parque Durango', '4 Recamaras con Baño cada una',
        'https://hometerrabr.com/wp-content/uploads/2023/12/20231129_165838.jpg'),
    // Agrega más propiedades según sea necesario
  ];

  // Remove 'const' from the constructor
  PropertyList({Key? key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: properties.length,
      itemBuilder: (context, index) {
        return PropertyCard(property: properties[index]);
      },
    );
  }
}

class Property {
  final String name;
  final String description;
  final String imageUrl;

  Property(this.name, this.description, this.imageUrl);
}

class PropertyCard extends StatelessWidget {
  final Property property;

  const PropertyCard({Key? key, required this.property});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(
            property.imageUrl,
            height: 200.0,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  property.name,
                  style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                Text(property.description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PropertySearchBar extends StatelessWidget {
  const PropertySearchBar({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      padding: const EdgeInsets.all(16.0),
      child: const Center(
        child: Text(
          'Búsqueda de Propiedades',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}


