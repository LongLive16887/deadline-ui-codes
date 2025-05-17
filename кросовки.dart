import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoes UI',
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text(
            'Vazifalar',
            style: GoogleFonts.montserrat(
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(21.0),
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            children: shoeItems
                .map((shoe) => ShoeCard(name: shoe.name, imageUrl: shoe.imageUrl))
                .toList(),
          ),
        ),
      ),
    );
  }
}

class ShoeCard extends StatelessWidget {
  final String name;
  final String imageUrl;

  const ShoeCard({required this.name, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.network(imageUrl, fit: BoxFit.contain),
          ),
          SizedBox(height: 8),
          Align(
            alignment: Alignment.centerLeft, 
            child: Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}


class Shoe {
  final String name;
  final String imageUrl;

  Shoe({required this.name, required this.imageUrl});
}

final List<Shoe> shoeItems = [
  Shoe(
    name: 'Nike',
    imageUrl: 'https://static.vecteezy.com/system/resources/thumbnails/049/668/138/small_2x/nike-air-max-exceed-running-shoes-orange-and-blue-comfortable-and-stylish-with-a-transparent-background-png.png',
  ),
  Shoe(
    name: 'Asics',
    imageUrl: 'https://pngfre.com/wp-content/uploads/Shoes-2-1024x579.png',
  ),
  Shoe(
    name: 'New Balance',
    imageUrl: 'https://atlas-content-cdn.pixelsquid.com/assets_v2/297/2974436998334387397/jpeg-600/G03.jpg?modifiedAt=1',
  ),
  Shoe(
    name: 'Nike',
    imageUrl: 'https://static.vecteezy.com/system/resources/thumbnails/049/668/138/small_2x/nike-air-max-exceed-running-shoes-orange-and-blue-comfortable-and-stylish-with-a-transparent-background-png.png',
  ),
  Shoe(
    name: 'New Balance',
    imageUrl: 'https://atlas-content-cdn.pixelsquid.com/assets_v2/297/2974436998334387397/jpeg-600/G03.jpg?modifiedAt=1',
  ),
  Shoe(
    name: 'Asics',
    imageUrl: 'https://pngfre.com/wp-content/uploads/Shoes-2-1024x579.png',
  ),
];