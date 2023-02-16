import 'package:flutter/material.dart';

//import '../components/toggle_button.dart';

class NextDeliveryDetails extends StatefulWidget {
  const NextDeliveryDetails({super.key});

  @override
  State<NextDeliveryDetails> createState() => _NextDeliveryDetailsState();
}

class _NextDeliveryDetailsState extends State<NextDeliveryDetails> {
  final _hospitalName = TextEditingController();

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
                              'Current Delivery Details: ',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),

                            const SizedBox(
                              height: 20,
                            ),

                            Row(
                              children: [
                                const Text('Last Period date: '),
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

                            const SizedBox(
                              height: 20,
                            ),

                            Row(
                              children: [
                                const Text('Expected Delivery details: '),
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

                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: _hospitalName,
                              style: const TextStyle(fontSize: 15),
                              decoration: const InputDecoration(
                                labelText: "Hospital Name: ",
                              ),
                              onFieldSubmitted: (value) {},
                            ),

                            const SizedBox(
                              height: 20,
                            ),

                            MaterialButton(
                              onPressed: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) =>
                                //             const PregnancyDetails()));
                              },
                              minWidth: double.infinity,
                              color: Colors.black,
                              child: const Padding(
                                padding: EdgeInsets.all(20),
                                child: Text(
                                  'Finish',
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
