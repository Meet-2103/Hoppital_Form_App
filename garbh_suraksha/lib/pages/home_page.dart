import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
//import 'package:intl/intl.dart';
//import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _nameController = TextEditingController();
  final _aadharController = TextEditingController();
  // final _bankAccountController = TextEditingController();
  // final _mobileNumberController = TextEditingController();
  // final _addressController = TextEditingController();
  // final _dateOfBirthController = TextEditingController();
  // final _ageController = TextEditingController();
  // final _ageAtTimeOfMarriageController = TextEditingController();
  // final _casteController = TextEditingController();
  // final _provertyController = TextEditingController();
  // final _prgController = TextEditingController();
  // final _regController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Garbh Suraksha'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            // height: 100,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(25),
                  child: Text(
                    'Form 1',
                    style: GoogleFonts.acme(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.green,
                      width: 2,
                    ),
                  ),
                  child: TextField(
                    decoration: const InputDecoration(labelText: 'Name'),
                    controller: _nameController,
                    onSubmitted: null,
                  ),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 10,
                ),
                Card(
                  elevation: 6,
                  child: TextField(
                    decoration: const InputDecoration(labelText: 'Aadhar Card'),
                    controller: _aadharController,
                    onSubmitted: null,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // Card(
                //   elevation: 6,
                //   child: TextField(
                //     decoration:
                //         const InputDecoration(labelText: 'Bank Account'),
                //     controller: _bankAccountController,
                //     onSubmitted: null,
                //   ),
                // ),
                // const SizedBox(
                //   height: 10,
                // ),
                // Card(
                //   elevation: 6,
                //   child: TextField(
                //     decoration: const InputDecoration(
                //       labelText: 'Mobile Number',
                //     ),
                //     controller: _mobileNumberController,
                //     keyboardType: TextInputType.number,
                //     onSubmitted: null,
                //   ),
                // ),
                // const SizedBox(
                //   height: 10,
                // ),
                // Card(
                //   elevation: 6,
                //   child: TextField(
                //     decoration: const InputDecoration(
                //       labelText: 'Address',
                //     ),
                //     controller: _addressController,
                //     //keyboardType: TextInputType.number,
                //     onSubmitted: null,
                //   ),
                // ),
                // const SizedBox(
                //   height: 10,
                // ),
                // Card(
                //   elevation: 6,
                //   child: TextField(
                //     decoration: const InputDecoration(
                //       labelText: 'DOB(DD/MM/YYYY)',
                //     ),
                //     controller: _dateOfBirthController,
                //     //keyboardType: TextInputType.number,
                //     onSubmitted: null,
                //   ),
                // ),
                // const SizedBox(
                //   height: 10,
                // ),
                // Card(
                //   elevation: 6,
                //   child: TextField(
                //     decoration: const InputDecoration(
                //       labelText: 'Age',
                //     ),
                //     controller: _ageController,
                //     keyboardType: TextInputType.number,
                //     onSubmitted: null,
                //   ),
                // ),
                // const SizedBox(
                //   height: 10,
                // ),
                // Card(
                //   elevation: 6,
                //   child: TextField(
                //     decoration: const InputDecoration(
                //       labelText: 'Age',
                //       hintText: '(at the time of marriage)',
                //     ),
                //     controller: _ageAtTimeOfMarriageController,
                //     keyboardType: TextInputType.number,
                //     onSubmitted: null,
                //   ),
                // ),
                // const SizedBox(
                //   height: 10,
                // ),
                // Card(
                //   elevation: 6,
                //   child: TextField(
                //     decoration: const InputDecoration(
                //       labelText: 'Caste',
                //     ),
                //     controller: _casteController,
                //     //keyboardType: TextInputType.number,
                //     onSubmitted: null,
                //   ),
                // ),
                // const SizedBox(
                //   height: 10,
                // ),
                // Card(
                //   elevation: 6,
                //   child: TextField(
                //     decoration: const InputDecoration(
                //       labelText: 'Proverty(Yes/No)',
                //     ),
                //     controller: _provertyController,
                //     //keyboardType: TextInputType.number,
                //     onSubmitted: null,
                //   ),
                // ),

                // const SizedBox(
                //   height: 10,
                // ),
                // Card(
                //   elevation: 6,
                //   child: TextField(
                //     decoration: const InputDecoration(
                //       labelText: 'Pregnancy Registration Page',
                //     ),
                //     controller: _prgController,
                //     keyboardType: TextInputType.number,
                //     onSubmitted: null,
                //   ),
                // ), //_regController
                // const SizedBox(
                //   height: 10,
                // ),
                // Card(
                //   elevation: 6,
                //   child: TextField(
                //     decoration: const InputDecoration(
                //       labelText: '',
                //     ),
                //     controller: _regController,
                //     keyboardType: TextInputType.number,
                //     onSubmitted: null,
                //   ),
                // ),
                // const SizedBox(
                //   height: 10,
                // ),
                // Card(
                //   elevation: 6,
                //   child: TextField(
                //     decoration: const InputDecoration(
                //       labelText: 'Age',
                //     ),
                //     controller: _regController,
                //     keyboardType: TextInputType.number,
                //     onSubmitted: null,
                //   ),
                // ),
                // const SizedBox(
                //   height: 10,
                // ),
                // Card(
                //   elevation: 6,
                //   child: TextField(
                //     decoration: const InputDecoration(
                //       labelText: 'Age',
                //     ),
                //     controller: _regController,
                //     keyboardType: TextInputType.number,
                //     onSubmitted: null,
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
 // bottomNavigationBar: GNav(
        //   tabs: [
        //     GButton(icon: Icons.home),
        //     GButton(icon: Icons.shopping_cart),
        //     GButton(icon: Icons.person)
        //   ],
        // ),