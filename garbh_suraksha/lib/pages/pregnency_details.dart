import 'package:flutter/material.dart';
import 'package:modern_ui_login_page/pages/last_delivery_details.dart';
import '../components/caste_button.dart';
import '../components/toggle_button.dart';
import '../components/deliverytype.dart';
import '../components/pregnancytype.dart';

class PregnancyDetails extends StatefulWidget {
  const PregnancyDetails({super.key});

  @override
  State<PregnancyDetails> createState() => _PregnancyDetailsState();
}

class _PregnancyDetailsState extends State<PregnancyDetails> {
  final _pregnancy = TextEditingController();
  final _monthOfPregnancy = TextEditingController();
  final _totalChildren = TextEditingController();
  final _ageOfEldestChild = TextEditingController();
  final _LastDelivery = TextEditingController();
  final _DateTime = TextEditingController();
  final _place = TextEditingController();
  final _TypeOfOperation = TextEditingController();
  final _complications = TextEditingController();

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
                            'Pregnancy Details: ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: const [
                              Text(
                                'Pregnancy Type: ',
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              PregnancyTypeButtonsSample(),
                            ],
                          ),
                          TextFormField(
                            maxLength: 1,
                            controller: _monthOfPregnancy,
                            style: const TextStyle(fontSize: 15),
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              labelText: "Months of Pregnancy: ",
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            maxLength: 2,
                            keyboardType: TextInputType.number,
                            controller: _totalChildren,
                            style: const TextStyle(fontSize: 15),
                            decoration: const InputDecoration(
                              labelText: "Total Number of Children: ",
                            ),
                            onFieldSubmitted: (value) {
                              Null;
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            maxLength: 2,
                            keyboardType: TextInputType.number,
                            controller: _ageOfEldestChild,
                            style: const TextStyle(fontSize: 15),
                            decoration: const InputDecoration(
                              labelText: "Age of Eldest Child: ",
                            ),
                            onFieldSubmitted: (value) {
                              Null;
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            //maxLength: 2,
                            //keyboardType: TextInputType.number,
                            controller: _LastDelivery,
                            style: const TextStyle(fontSize: 15),
                            decoration: const InputDecoration(
                              labelText: "Who did the Last Delivery: ",
                            ),
                            onFieldSubmitted: (value) {
                              Null;
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: const [
                              Text(
                                'Delivery Type: ',
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              DeliveryTypeButtonsSample(),
                              SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                          FittedBox(
                            child: Row(
                              children: const [
                                Text(
                                  'Complications during last Delivery: ',
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                ToggleButtonsSample(),
                                SizedBox(
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LastDeliveryDetails()));
                            },
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
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
