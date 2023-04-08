import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:contact_provider/stores/contact.dart' as contact_store;

class DataKontak extends StatefulWidget {
  const DataKontak({super.key});

  @override
  State<DataKontak> createState() => _DataKontakState();
}

class _DataKontakState extends State<DataKontak> {
  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<contact_store.Contact>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Kontak'),
      ),
      body: ListView.builder(
          itemCount: contactProvider.contacts.length,
          itemBuilder: (context, index) {
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
                    getFirstLatter(contactProvider.contacts[index].name),
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                title: Text(contactProvider.contacts[index].name),
                subtitle: Text(contactProvider.contacts[index].number),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          contactProvider.contacts.removeAt(index);
                        });
                      },
                      icon: const Icon(Icons.delete),
                    ),
                    IconButton(
                      onPressed: () {
                        TextEditingController _nameController =
                            TextEditingController(
                                text: contactProvider.contacts[index].name);
                        TextEditingController _numberController =
                            TextEditingController(
                                text: contactProvider.contacts[index].number);
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
                                        String newName = _nameController.text;
                                        String newNumber =
                                            _numberController.text;

                                        setState(
                                          () {
                                            contactProvider
                                                .contacts[index].name = newName;
                                            contactProvider.contacts[index]
                                                .number = newNumber;

                                            /*  contacts[index]['name'] =
                                                        newName;
                                                    contacts[index]['number'] =
                                                        newNumber; */
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
          }
          /* shrinkWrap: true,
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
                          subtitle: Text(,
                            contacts[index]['number']!,
                            style: GoogleFonts.poppins(
                              fontSize: 14,
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
                                                  controller:
                                                      _numberController,
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
                                                      contacts[index]
                                                          ['name'] = newName;
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
                    }, */
          ),
    );
  }
}
