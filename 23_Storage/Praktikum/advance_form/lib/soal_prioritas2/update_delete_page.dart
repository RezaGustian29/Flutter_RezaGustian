import 'package:advance_form/soal_eksplorasi/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

/* class Contact {
  String? name;
  String? phoneNumber;

  Contact({required this.name, required this.phoneNumber});
} */

class UpdateDeletePage extends StatefulWidget {
  const UpdateDeletePage({super.key});

  @override
  State<UpdateDeletePage> createState() => _UpdateDeletePageState();
}

class _UpdateDeletePageState extends State<UpdateDeletePage> {
  late SharedPreferences loginData;
  String username = '';

  @override
  void initState() {
    super.initState();
    initial();
  }

  void initial() async {
    loginData = await SharedPreferences.getInstance();
    setState(() {
      username = loginData.getString('username').toString();
    });
  }

  /* String? nameController = '';
  String? phoneController = ''; */
  var nameController = TextEditingController();
  var numberController = TextEditingController();
  var formkey = GlobalKey<FormState>();

  List<Map<String, String>> contacts = [];

  void addContact() {
    String name = nameController.text;
    String number = numberController.text;

    setState(() {
      contacts.add({'name': name, 'number': number});
    });

    nameController.clear();
    numberController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Update Delete Page'),
      ),
      body: Container(
        //height: contacts.length * 100.0,
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
                      controller: nameController,
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
                      controller: numberController,
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
                        onPressed: addContact,
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
                  Row(
                    children: [
                      const Text('Selamat Datang'),
                      Text(username),
                      ElevatedButton(
                        onPressed: () {
                          loginData.setBool('login', true);
                          loginData.remove('username');
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ),
                          );
                        },
                        child: Text('Log Out'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'List Contact',
                    style: GoogleFonts.poppins(
                        fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: contacts.length,
                    itemBuilder: (context, int index) {
                      /* Contact contact = contacts[index];
                      final kontak = contacts[index];
                      final inisial = kontak.name![0].toUpperCase(); */
                      String getFirstLatter(String text) {
                        if (text.isEmpty) {
                          return '';
                        } else {
                          return text[0].toUpperCase();
                        }
                      }

                      return Card(
                        shadowColor: Colors.black,
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.lightGreen,
                            child: Text(
                              getFirstLatter(contacts[index]['name']!),
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21,
                                  color: Colors.white),
                            ),
                          ),
                          title: Text(contacts[index]['name']!),
                          subtitle: Text(contacts[index]['number']!),
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
                                  TextEditingController nameController =
                                      TextEditingController(
                                          text: contacts[index]['name']);
                                  TextEditingController numberController =
                                      TextEditingController(
                                          text: contacts[index]['number']);
                                  setState(() {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: const Text('Edit Data'),
                                            content: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                TextFormField(
                                                  controller: nameController,
                                                  //initialValue: contacts[index]
                                                  //['name'],
                                                  decoration:
                                                      const InputDecoration(
                                                    labelText: 'Title',
                                                  ),
                                                  onChanged: (value) {
                                                    contacts[index]['name'] =
                                                        value;
                                                  },
                                                ),
                                                TextFormField(
                                                  controller: numberController,
                                                  //initialValue: contacts[index]
                                                  //['number'],
                                                  decoration:
                                                      const InputDecoration(
                                                          labelText: 'Nomor'),
                                                  onChanged: (value) {
                                                    contacts[index]['number'] =
                                                        value;
                                                  },
                                                ),
                                              ],
                                            ),
                                            actions: [
                                              TextButton(
                                                child: const Text('Batal'),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                              ),
                                              TextButton(
                                                child: const Text('Simpan'),
                                                onPressed: () {
                                                  String newName =
                                                      nameController.text;
                                                  String newNumber =
                                                      numberController.text;

                                                  setState(() {
                                                    contacts[index]['name'] =
                                                        newName;
                                                    contacts[index]['number'] =
                                                        newNumber;
                                                  });
                                                  Navigator.pop(context);
                                                },
                                              )
                                            ],
                                          );
                                        });
                                  });
                                },
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
