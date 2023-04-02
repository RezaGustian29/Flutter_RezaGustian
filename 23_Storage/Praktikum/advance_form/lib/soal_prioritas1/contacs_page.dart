import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:advance_form/model.dart/data.dart';

class ContactListPage extends StatefulWidget {
  const ContactListPage({super.key});

  @override
  State<ContactListPage> createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  var inputController = TextEditingController();
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('List Contact'),
      ),
      body: Container(
        height: dataMatkul.length * 100.0,
        margin: const EdgeInsets.only(left: 5, right: 5),
        child: SingleChildScrollView(
          child: Card(
            child: SizedBox(
              child: Column(
                children: [
                  Image.asset(
                    'assets/contacts.png',
                  ),
                  Text(
                    'Create New Contacts',
                    style: GoogleFonts.poppins(
                        fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Text(
                        'A dialog is a type of modal window that appears in front of app content provide critical information, or prompt for a decission to be made',
                        style: GoogleFonts.poppins(
                            fontSize: 12, fontWeight: FontWeight.w500)),
                  ),
                  const Divider(
                    color: Colors.black,
                    height: 25,
                    thickness: 1,
                    indent: 25,
                    endIndent: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                    child: TextField(
                      controller: inputController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Insert Your Name'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                    child: TextField(
                      controller: inputController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), hintText: '+62...'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 200.0),
                    child: SizedBox(
                      width: 120,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0XFF9743c2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text(
                          'Submit',
                          style:
                              GoogleFonts.poppins(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'List Contact',
                    style: GoogleFonts.poppins(fontSize: 20),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: dataKontak.length,
                    itemBuilder: (BuildContext context, int index) {
                      var kontak = dataKontak[index];
                      var inisial = kontak['username']![0].toUpperCase();

                      return Card(
                        shadowColor: Colors.black,
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.lightGreen,
                            child: Text(
                              inisial,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21,
                                  color: Colors.white),
                            ),
                          ),
                          title: Text(
                            kontak['username']!,
                            style: const TextStyle(fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text(
                            kontak['phone']!,
                            style: const TextStyle(fontSize: 15),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.delete),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.edit),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
