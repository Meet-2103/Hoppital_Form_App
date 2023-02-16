import 'package:flutter/material.dart';
import '../components/caste_button.dart';
import '../components/toggle_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _surveyNumber = TextEditingController();
  final _giYear = TextEditingController();
  final _giMonth = TextEditingController();
  final _nameController = TextEditingController();
  final _aadharController = TextEditingController();
  final _bankAccountNumber = TextEditingController();
  final _mobNumber = TextEditingController();
  final _address = TextEditingController();
  final _dateOfBirth = TextEditingController();
  final _age = TextEditingController();
  final _ageAtMarriage = TextEditingController();
// final _caste = TextEditingController();
// final _belowPoverty = TextEditingController();
  final _aashaWorkerName = TextEditingController();
// final _pregnancyRegistrationDate = TextEditingController();
// final _regWithin2Weeks = TextEditingController();
  final _rchRegNumber = TextEditingController();
  final _pmmvyRegNumber = TextEditingController();

  void _showDatePicker() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1975),
        lastDate: DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Garbh Suraksha'),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const Text(
                        'Mother Child Survey',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.redAccent,
                            fontSize: 25),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[200],
                        ),
                        child: Column(
                          children: [
                            const Text(
                              'General Information: ',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            TextFormField(
                              controller: _surveyNumber,
                              style: const TextStyle(fontSize: 15),
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                labelText: "Survey Number: ",
                              ),
                            ),

                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              keyboardType: TextInputType.datetime,
                              controller: _giYear,
                              style: const TextStyle(fontSize: 15),
                              decoration: const InputDecoration(
                                labelText: "Year: ",
                              ),
                              onFieldSubmitted: (value) {
                                Null;
                              },
                            ),

                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              keyboardType: TextInputType.number,
                              controller: _giMonth,
                              style: const TextStyle(fontSize: 15),
                              decoration: const InputDecoration(
                                labelText: "Month: ",
                              ),
                              onFieldSubmitted: (value) {
                                Null;
                              },
                            ),

                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              keyboardType: TextInputType.name,
                              controller: _nameController,
                              style: const TextStyle(fontSize: 15),
                              decoration: const InputDecoration(
                                labelText: "Name of the pregnant women: ",
                              ),
                              onFieldSubmitted: (value) {
                                Null;
                              },
                            ),

                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              keyboardType: TextInputType.number,
                              maxLength: 12,
                              controller: _aadharController,
                              style: const TextStyle(fontSize: 15),
                              decoration: const InputDecoration(
                                labelText: "Aadhar Number: ",
                              ),
                              onFieldSubmitted: (value) {
                                Null;
                              },
                            ),

                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              keyboardType: TextInputType.number,
                              controller: _bankAccountNumber,
                              style: const TextStyle(fontSize: 15),
                              decoration: const InputDecoration(
                                labelText: "Bank Account Number: ",
                              ),
                              onFieldSubmitted: (value) {
                                Null;
                              },
                            ),

                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              keyboardType: TextInputType.phone,
                              controller: _mobNumber,
                              maxLength: 10,
                              style: const TextStyle(fontSize: 15),
                              decoration: const InputDecoration(
                                labelText: "Mobile Number: ",
                              ),
                              onFieldSubmitted: (value) {
                                Null;
                              },
                            ),

                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: _address,
                              style: const TextStyle(fontSize: 15),
                              decoration: const InputDecoration(
                                labelText: "Adrdess(Permanent/Temporary): ",
                              ),
                              onFieldSubmitted: (value) {
                                Null;
                              },
                            ),

                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              keyboardType: TextInputType.datetime,
                              controller: _dateOfBirth,
                              style: const TextStyle(fontSize: 15),
                              decoration: const InputDecoration(
                                labelText: "Date of Birth: ",
                              ),
                              onFieldSubmitted: (value) {
                                Null;
                              },
                            ),

                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              keyboardType: TextInputType.number,
                              maxLength: 2,
                              controller: _age,
                              style: const TextStyle(fontSize: 15),
                              decoration: const InputDecoration(
                                labelText: "Age: ",
                              ),
                              onFieldSubmitted: (value) {},
                            ),

                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: _ageAtMarriage,
                              style: const TextStyle(fontSize: 15),
                              decoration: const InputDecoration(
                                labelText: "Age at time of marriage: ",
                              ),
                              onFieldSubmitted: (value) {},
                            ),

                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: const [
                                Text(
                                  'Caste: ',
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                ToggleCasteButons(),
                              ],
                            ),
                            // TextFormField(
                            //   controller: _caste,
                            //   style: const TextStyle(fontSize: 15),
                            //      decoration: const InputDecoration(
                            //        labelText: "Caste: ",
                            //      ),
                            //      onFieldSubmitted: (value) {
                            //      },
                            // ),

                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: const [
                                // TextFormField(
                                //   controller: _belowPoverty,
                                //   style: const TextStyle(fontSize: 15),
                                //      decoration: const InputDecoration(
                                //        labelText: "Below Poverty: ",
                                //      ),
                                //      onFieldSubmitted: (value) {
                                //      },
                                // ),
                                Text(
                                  'Below Poverty: ',
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                ToggleButtonsSample(),
                              ],
                            ),

                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: _aashaWorkerName,
                              style: const TextStyle(fontSize: 15),
                              decoration: const InputDecoration(
                                labelText: "Aasha Worker Name",
                              ),
                              onFieldSubmitted: (value) {},
                            ),

                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                const Text('Pregnancy Registration Date: '),
                                const SizedBox(
                                  width: 20,
                                ),
                                MaterialButton(
                                  onPressed: _showDatePicker,
                                  color: Colors.black,
                                  child: const Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      'DATE',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // TextFormField(
                            //   controller: _pregnancyRegistrationDate,
                            //   style: const TextStyle(fontSize: 15),
                            //      decoration: const InputDecoration(
                            //        labelText: "Pregnancy Registration Date: ",
                            //      ),
                            //      onFieldSubmitted: (value) {
                            //      },
                            // ),

                            // const SizedBox(
                            //   height: 20,
                            // ),
                            // Row(
                            //   children: const [
                            //     Text(
                            //       'Caste: ',
                            //     ),
                            //     SizedBox(
                            //       width: 20,
                            //     ),
                            //     ToggleCasteButons(),
                            //   ],
                            //   // TextFormField(
                            //   //   controller: _regWithin2Weeks,
                            //   //   style: const TextStyle(fontSize: 15),
                            //   //      decoration: const InputDecoration(
                            //   //        labelText: "Registration within 2 weeks: ",
                            //   //      ),
                            //   //      onFieldSubmitted: (value) {
                            //   //      },
                            //   // ),
                            // ),

                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: _rchRegNumber,
                              style: const TextStyle(fontSize: 15),
                              decoration: const InputDecoration(
                                labelText: "RCH Number ",
                              ),
                              onFieldSubmitted: (value) {},
                            ),

                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: _pmmvyRegNumber,
                              style: const TextStyle(fontSize: 15),
                              decoration: const InputDecoration(
                                labelText: "PMMVY Registration Number: ",
                              ),
                              onFieldSubmitted: (value) {},
                            ),

                            const SizedBox(
                              height: 20,
                            ),

                            MaterialButton(
                              onPressed: () {},
                              minWidth: double.infinity,
                              color: Colors.black,
                              child: const Padding(
                                padding: EdgeInsets.all(20),
                                child: Text(
                                  'Next',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),

                            // ElevatedButton(
                            //   onPressed: () {},
                            //   style: ElevatedButton.styleFrom(
                            //     side: ,
                            //     padding: EdgeInsets.all(20),
                            //     shape: RoundedRectangleBorder(
                            //       borderRadius: BorderRadius.circular(8),),
                            //       backgroundColor: Colors.purple,),
                            //       child: const Text("Next", style: TextStyle(color: Colors.white, fontSize: 18),),),

                            // const SizedBox(height: 20,),
                            // TextFormField(
                            //   controller: _nameController,
                            //   style: const TextStyle(fontSize: 15),
                            //      decoration: const InputDecoration(
                            //        labelText: "Enter your Name: ",
                            //      ),
                            //      onFieldSubmitted: (value) {
                            //      },
                            // ),

                            // const SizedBox(height: 20,),
                            // TextFormField(
                            //   controller: _pmmvyRegNumber,
                            //   style: const TextStyle(fontSize: 15),
                            //      decoration: const InputDecoration(
                            //        labelText: "Enter your Name: ",
                            //      ),
                            //      onFieldSubmitted: (value) {
                            //      },
                            // ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}








// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// //import 'package:google_nav_bar/google_nav_bar.dart';
// //import 'package:intl/intl.dart';

// class HomePage extends StatelessWidget {
//   HomePage({super.key});

//   final _nameController = TextEditingController();

//   // final _aadharController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Garbh Suraksha'),
//           //centerTitle: true,
//         ),
//         body: SizedBox(
//           height: 100,
//           child: Column(
           
//             children: [
//               Container(
//                 padding: const EdgeInsets.all(5),
//                 child: Text(
//                   'Form 1',
//                   style: GoogleFonts.acme(
//                     fontSize: 25,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               const Text('Hello'),

//               const SizedBox(
//                 height: 10,
//               ),

//               Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   border: Border.all(
//                     color: Colors.green,
//                     width: 2,
//                   ),
//                 ),
//                 child: Row(
//                   children: [
//                     const Text('Name:'),
//                     SizedBox(
//                       height: 50,
//                       child: TextField(
//                         decoration: const InputDecoration(labelText: 'Name'),
//                         controller: _nameController,
//                         onSubmitted: null,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               // ignore: prefer_const_constructors
//               // SizedBox(
//               //   height: 20,
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }




