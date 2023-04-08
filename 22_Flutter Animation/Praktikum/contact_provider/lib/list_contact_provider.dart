import 'package:contact_provider/listview_contact.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:contact_provider/model.dart';
import 'package:provider/provider.dart';
import 'package:contact_provider/stores/contact.dart' as contact_store;

class ListContactProvider extends StatefulWidget {
  const ListContactProvider({super.key});

  @override
  State<ListContactProvider> createState() => _ListContactProviderState();
}

class _ListContactProviderState extends State<ListContactProvider> {
  String name = '';
  String number = '';

  var formkey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _numberController = TextEditingController();
/* 
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
  } */

  @override
  void dispose() {
    _nameController.dispose();
    _numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<contact_store.Contact>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'List Contact',
        ),
      ),
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
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
                      onChanged: (String value) {
                        name = value;
                      },
                      controller: _nameController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Insert your name'),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      onChanged: (String value) {
                        number = value;
                      },
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
                  //onPressed: addContact,
                  onPressed: () {
                    if (!formkey.currentState!.validate()) return;

                    formkey.currentState!.save();

                    contactProvider.add(
                      GetContact(
                        name: name,
                        number: number,
                      ),
                    );
                    setState(() {
                      _nameController.clear();
                      _numberController.clear();
                    });
                  },
                  child: const Text(
                    'Submit',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) {
                return const DataKontak();
              },
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                //final tween = Tween(begin: Offset(0, .5), end: Offset.zero);
                final tween = Tween(begin: 0.0, end: 1.0);

                /* return SlideTransition(
                  //position: animation.drive(tween),
                  child: child,
                ); */
                return ScaleTransition(
                  scale: animation.drive(tween),
                  child: child,
                );
              },
            ),
          );
        },
        /* onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DataKontak(),
            ),
          );
        }, */
        child: const Icon(Icons.remove_red_eye_sharp),
      ),
    );
  }
}
