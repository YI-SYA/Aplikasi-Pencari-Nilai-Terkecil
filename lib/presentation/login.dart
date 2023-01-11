import 'package:flutter/material.dart';
import 'package:uas_project/presentation/item_detail/hitung.dart';

class SignInPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final usernamecontroller =TextEditingController();
  final passwordcontroller =TextEditingController();
  String? nusername, npassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "SIGN IN",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                TextFormField(
                  controller: usernamecontroller,
                  validator: validateName,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Icon(Icons.person),
                      ),
                      hintText: "Username"),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: passwordcontroller,
                  validator: validatePassword,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Icon(Icons.lock_open),
                      ),
                      hintText: "Password"),
                ),
                SizedBox(
                  height: 15,
                ),
                MaterialButton(
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  splashColor: Colors.grey,
                  onPressed: () {
                    nusername = usernamecontroller.text;
                    npassword = passwordcontroller.text;

                      if(nusername != "admin"){
                        print("Username Salah");
                      }else if(npassword != "admin"){
                        print("password salah");
                      }
                      else{
                        Navigator.push(context, MaterialPageRoute(builder: (context) => hitung()));
                      }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  String? validateName(String? value) {
    if (value != null && value.isEmpty)
      return "Username harap diisi";
    else
      return null;
  }
  String? validatePassword(String? value) {
    if (value != null && value.isEmpty)
      return "Password harap diisi";
    else
      return null;
  }
}
