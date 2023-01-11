import 'package:flutter/material.dart';
import 'package:uas_project/presentation/item_detail/hitung.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class hasil extends StatelessWidget {
  hasil({
    required this.angka1,
    required this.angka2,
    required this.angka3,
    required this.angka4,
  });

  final int angka1;
  final int angka2;
  final int angka3;
  final int angka4;

  @override
  Widget build(BuildContext context) {
    int konfirm = angka1;
    if (angka1 < angka2 && angka1 < angka3 && angka1 < angka4) {
      konfirm = angka1;
    } else if (angka2 < angka1 && angka2 < angka3 && angka2 < angka4) {
      konfirm = angka2;
    } else if (angka3 < angka1 && angka3 < angka2 && angka3 < angka4) {
      konfirm = angka3;
    } else if (angka4 < angka1 && angka4 < angka2 && angka4 < angka3) {
      konfirm = angka4;
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hasil"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "konfirmasi",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            Text(
              "Nilai Terkecil adalah :",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            Text(
              konfirm.toString(),
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w800,
                  color: Colors.red),
            ),
            SizedBox(height: 20,),
            MaterialButton(
                child: Text(
                  'simpan',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                splashColor: Colors.grey,
                onPressed: () => sweatAlert(context)
                )

          ],
        ),
      ),
    );
  }
void sweatAlert(BuildContext context) {
  Alert(
    context: context,
    title: "Berhasil",
    desc: "Selamat Data Berhasil Disimpan",
    buttons: [
      DialogButton(
        child: Text(
          "Selanjutnya",
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
        onPressed: () => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
            builder: (BuildContext context) => const hitung()),
          ModalRoute.withName('/'),),
      )
    ],
  ).show();
  return;
}
}
