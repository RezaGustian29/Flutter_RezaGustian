import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:email_validator/email_validator.dart';

class LoginContact extends StatefulWidget {
  const LoginContact({super.key});

  @override
  State<LoginContact> createState() => _LoginContactState();
}

class _LoginContactState extends State<LoginContact> {
  final formKey = GlobalKey<FormState>();

  //untuk memberi identitas/id/nama dari sebuah form
  final _firstnameController = TextEditingController();
  final _lastnameController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();

  //untuk mencegah kebocoran memory menggunakan dispose jadi ketika sudah tdk digunkn akan diahpus otomatis
  @override
  void dispose() {
    _firstnameController.dispose();
    _lastnameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Welcome',
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Contact Us'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('About Us'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Login'),
                ),
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: formKey,
          child: Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                const SizedBox(height: 50),
                Image.asset(
                  'assets/logo.png',
                  height: 100,
                ),
                const SizedBox(height: 10),
                Text(
                  'Ikan Teri Di Bungkus Daun Pisang \n Anda Mengubungi Kami Siap Datang',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                /* const SizedBox(height: 80),
                Text(
                  'Welcome Contact Us',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                  ),
                ), */
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: const [
                    Text(
                      'Username',
                    ),
                  ],
                ),
                //untuk membuat form input username
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Usernamme',
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: const [
                    Text('Email'),
                  ],
                ),
                //form input email
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Email',
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(340, 45),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Login',
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sign In',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                /*  const SizedBox(height: 50),
                Container(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/logo.png',
                        height: 110,
                      ),
                    ],
                  ),
                ), */
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Contact Us',
                  style: GoogleFonts.poppins(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'First Name',
                            ),
                            TextFormField(
                              controller: _firstnameController,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.shade300,
                              ),
                              //untuk validasi form yang harus diisi minimal 4 karakter
                              validator: (value) {
                                if (value != null && value.length < 4) {
                                  return "Enter at least 4 caracters";
                                } else {
                                  return null;
                                }
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.00),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Last Name',
                            ),
                            TextFormField(
                              controller: _lastnameController,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.shade300,
                              ),
                              /* validator: (value) {
                                if (value != null && value.length < 4) {
                                  return "Enter at least 4 caracters";
                                } else {
                                  return null;
                                }
                              }, */
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Email',
                      ),
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey.shade300,
                        ),
                        //untuk validasi email sudah sesuai dengan kaidah penulisan email atau belum, ini perlu menginstal package email_validator
                        validator: (email) {
                          if (email != null &&
                              !EmailValidator.validate(email)) {
                            return "Enter a email valid";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'What can we help you, well?',
                          ),
                          TextFormField(
                            maxLines: 4,
                            controller: _messageController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.shade300,
                            ),
                            //untuk validasi form atau form wajib diisi tanpa ada minimal karakter
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter your message";
                              }
                              return null;
                            },
                          ),
                          Column(
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0XFF6a14f5)),
                                onPressed: () {
                                  //untuk memvalidasi bahwa form sudah diisi atau sudah valid atau belum, jika valid/isvalidform maka ketika tombol submit ditekan akan mengirim data ke alertdialog
                                  final isValidForm =
                                      formKey.currentState!.validate();
                                  if (isValidForm) {
                                    String firstname =
                                        _firstnameController.text;
                                    String lastname = _lastnameController.text;
                                    String email = _emailController.text;
                                    String message = _messageController.text;

                                    //untuk clear data/mengosongkan data ketika klik tombol submit
                                    _firstnameController.text = '';
                                    _lastnameController.text = '';
                                    _emailController.text = '';
                                    _messageController.text = '';

                                    //untuk membuat alert dialog yang berisi data dari form ketika tombol submit ditekan
                                    showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        title: const Text('Data Anda Adalah'),
                                        //untuk menampilkan data yang dikirim dari form
                                        content: Text(
                                          'FirstName: $firstname\nLastName: $lastname\nEmail: $email\nMessage: $message',
                                          style: GoogleFonts.poppins(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              //untuk menutup alert dialog
                                              Navigator.pop(context);
                                            },
                                            child: const Text('Close'),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                },
                                child: Text(
                                  'Submit',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 25),
                          Center(
                            child: Column(
                              children: [
                                Text(
                                  'About Us',
                                  style: GoogleFonts.poppins(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'Pilih Destinasi Wisata Anda',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Card(
                                        child: Column(
                                          children: [
                                            Image.asset('assets/bali.jpg'),
                                            ListTile(
                                              title: Text(
                                                'Bali, Indonesia',
                                                style: GoogleFonts.poppins(
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              subtitle: const Text(''),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Card(
                                        child: Column(
                                          children: [
                                            Image.asset('assets/bromo.jpg'),
                                            ListTile(
                                              title: Text(
                                                'Bromo, Indonesia',
                                                style: GoogleFonts.poppins(
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              subtitle: const Text(''),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Card(
                                        child: Column(
                                          children: [
                                            Image.asset('assets/prambanan.jpg'),
                                            ListTile(
                                              title: Text(
                                                'Prambanan, Indonesia',
                                                style: GoogleFonts.poppins(
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              subtitle: const Text(''),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Card(
                                        child: Column(
                                          children: [
                                            Image.asset(
                                                'assets/nusa_penida.jpg'),
                                            ListTile(
                                              title: Text(
                                                'Nusa Penida, Indonesia',
                                                style: GoogleFonts.poppins(
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              subtitle: const Text(''),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
