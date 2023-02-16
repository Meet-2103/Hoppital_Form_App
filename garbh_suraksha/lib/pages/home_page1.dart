import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage1 extends StatelessWidget {
  HomePage1({super.key});

  final _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Garbh Suraksha'),
      ),
      body: Column(
        children: [
          Text(
            'Form 1',
            style: GoogleFonts.acme(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.green,
                width: 2,
              ),
            ),
            child: Row(
              children: [
                const Text('Name:'),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Name'),
                    controller: _nameController,
                    //onSubmitted: null,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
