import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:advance_form/model.dart/data.dart';
/* 
class Contact {
  String? name;
  String? phoneNumber;

  Contact({required this.name, required this.phoneNumber});
} */

class EditPage extends StatefulWidget {
  const EditPage({super.key});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  var nameController = TextEditingController();
  var numberController = TextEditingController();
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Update Page'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(left: 5, right: 5),
          child: SingleChildScrollView(
            child: Card(
              child: SizedBox(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10),
                      child: TextField(
                        controller: nameController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10),
                      child: TextField(
                        controller: numberController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: SizedBox(
                        width: 120,
                        height: 45,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0XFF9743c2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Submit',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
