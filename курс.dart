
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CurrencyConverterScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CurrencyConverterScreen extends StatelessWidget {
  final List<String> countries = ['Algeria', 'Brazil', 'USA', 'Germany'];

  @override
  Widget build(BuildContext context) {
    String fromCountry = countries[0];
    String toCountry = countries[1];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Contact',
                  style: GoogleFonts.outfit(
                    color: Colors.green,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Currency',
                style: GoogleFonts.outfit(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Colors.blueAccent,
                ),
              ),
              Text(
                'Converter',
                style: GoogleFonts.outfit(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(height: 50),
              Text(
                'From',
                style: GoogleFonts.outfit(fontWeight: FontWeight.w500 , fontSize: 24),
                
              ),
              SizedBox(height: 8),
              DropdownButtonFormField<String>(
                value: fromCountry,
                items: countries
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
                onChanged: (value) {},
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 50),
              Text(
                'To',
                style: GoogleFonts.outfit(fontWeight: FontWeight.w500, fontSize: 24),
              ),
              SizedBox(height: 8),
              DropdownButtonFormField<String>(
                value: toCountry,
                items: countries
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
                onChanged: (value) {},
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'DZD',
                    style: GoogleFonts.outfit(
                        fontWeight: FontWeight.w700, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Amount',
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 50),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent[400],
                    padding: EdgeInsets.symmetric(vertical: 24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Convert',
                    style: GoogleFonts.outfit(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Result',
                    style: GoogleFonts.outfit(
                        fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  Text(
                    'BRL',
                    style: GoogleFonts.outfit(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.grey[600]),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'Converted Amount',
                  style: GoogleFonts.outfit(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
