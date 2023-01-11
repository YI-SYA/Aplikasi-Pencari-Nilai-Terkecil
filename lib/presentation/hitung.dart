import 'package:flutter/material.dart';
import 'package:uas_project/presentation/item_detail/hasil.dart';

class hitung extends StatefulWidget {
  const hitung({Key? key}) : super(key: key);

  @override
  State<hitung> createState() => _hitungState();
}

class _hitungState extends State<hitung> {
  int angka1 = 0;
  int angka2 = 0;
  int angka3 = 0;
  int angka4 = 0;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplikasi Pencari Nilai Terkecil"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Mohon Masukkan Angka",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ),
                Row(
                  children: [
                    Text("Angka 1 : "),
                    SizedBox(width: 10),
                    Expanded(child: TextFormField(
                      validator: validateNumber,
                      onChanged: (txt) {
                        setState(() {
                          angka1=int.parse(txt);
                        });
                      },
                       keyboardType: TextInputType.number,
                      textAlign: TextAlign.start,
                    ))
                  ],
                ),
                Row(
                  children: [
                    Text("Angka 2 : "),
                    SizedBox(width: 10),
                    Expanded(child: TextFormField(
                      validator: validateNumber,
                      onChanged: (txt) {
                        setState(() {
                          angka2 = int.parse(txt);
                        });
                      },
                    ))
                  ],
                ),
                Row(
                  children: [
                    Text("Angka 3 : "),
                    SizedBox(width: 10),
                    Expanded(child: TextFormField(
                      validator: validateNumber,
                      onChanged: (txt) {
                        setState(() {
                          angka3 = int.parse(txt);
                        });
                      },
                    ))
                  ],
                ),
                Row(
                  children: [
                    Text("Angka 4 : "),
                    SizedBox(width: 10),
                    Expanded(child: TextFormField(
                      validator: validateNumber,
                      onChanged: (txt) {
                        setState(() {
                          angka4 = int.parse(txt);
                        });
                      },
                    ))
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: MaterialButton(
                    child: Text(
                      'Cari',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blue,
                    splashColor: Colors.grey,
                    onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => hasil(angka1:angka1, angka2:angka2, angka3:angka3, angka4:angka4)));
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  String? validateNumber(String? value) {
    if (value != null && value.isEmpty)
      return "Angka tidak boleh kosong!!";
    else
      return null;
  }
}
