import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListContact extends StatefulWidget {
  const ListContact({super.key});

  @override
  State<ListContact> createState() => _ListContactState();
}

class _ListContactState extends State<ListContact> {
  var formkey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _numberController = TextEditingController();

  List<Map<String, String>> contacts = [];

  void addContact() {
    String name = _nameController.text;
    String number = _numberController.text;

    setState(
      () {
        contacts.add({'name': name, 'number': number});

        _nameController.clear();
        _numberController.clear();
      },
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'List Contact',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
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
                  Text(
                    'A dialog is a type of modal window that appears \n in front of app content provide critical information, \n or prompt for a decission to be made',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                    height: 25,
                    thickness: 1,
                    indent: 25,
                    endIndent: 25,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          controller: _nameController,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Insert your name'),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: _numberController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '08....',
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 250.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0XFF9743c2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: addContact,
                      child: const Text(
                        'Submit',
                      ),
                    ),
                  ),
                  Text(
                    'Data Kontak',
                    style: GoogleFonts.poppins(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: contacts.length,
                    itemBuilder: (context, int index) {
                      String getFirstLatter(String text) {
                        if (text.isEmpty) {
                          return '';
                        } else {
                          return text[0].toUpperCase();
                        }
                      }

                      return Card(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.green,
                            child: Text(
                              getFirstLatter(contacts[index]['name']!),
                              style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ),
                          title: Text(
                            contacts[index]['name']!,
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          subtitle: Text(
                            contacts[index]['number']!,
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    contacts.removeAt(index);
                                  });
                                },
                                icon: const Icon(Icons.delete),
                              ),
                              IconButton(
                                onPressed: () {
                                  TextEditingController _nameController =
                                      TextEditingController(
                                    text: contacts[index]['name'],
                                  );
                                  TextEditingController _numberController =
                                      TextEditingController(
                                    text: contacts[index]['number'],
                                  );
                                  setState(
                                    () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: const Text('Edit Data'),
                                            content: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                TextFormField(
                                                  controller: _nameController,
                                                  decoration:
                                                      const InputDecoration(
                                                    labelText: 'Username',
                                                  ),
                                                ),
                                                TextFormField(
                                                  controller: _numberController,
                                                )
                                              ],
                                            ),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: const Text('Close'),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  String newName =
                                                      _nameController.text;
                                                  String newNumber =
                                                      _numberController.text;
                                                  setState(
                                                    () {
                                                      contacts[index]['name'] =
                                                          newName;
                                                      contacts[index]
                                                              ['number'] =
                                                          newNumber;
                                                    },
                                                  );
                                                  Navigator.pop(context);
                                                },
                                                child: const Text('Save'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                  );
                                },
                                icon: const Icon(Icons.edit),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
