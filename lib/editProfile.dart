import 'package:flutter/material.dart';
import 'package:profile.dart/profile.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

get child => null;

class _EditProfileState extends State<EditProfile> {
  get isObscurePasswordTextField => true;

  get isPasswordTextField => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.only(left: 15, top: 50, right: 15),
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: ListView(children: [
                Center(
                  child: Stack(
                    children: [
                      Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                              border: Border.all(width: 4, color: Colors.white),
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    color: Colors.black.withOpacity(0.1))
                              ],
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/man.png')))),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(width: 4, color: Colors.white),
                                color: Colors.blue),
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                ),
                SizedBox(height: 30),
                buildTextField("Full Name", "Demon", false),
                buildTextField("Email", "Demon97@gmail.com", false),
                buildTextField("Password", "********", true),
                buildTextField("location", "Sri Lanka", false),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: Text("CANCEL",
                          style: TextStyle(
                              fontSize: 15,
                              letterSpacing: 2,
                              color: Colors.black)),
                      style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text("UPDATE",
                            style: TextStyle(
                                fontSize: 15,
                                letterSpacing: 2,
                                color: Colors.white)),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          padding: EdgeInsets.symmetric(horizontal: 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ))
                  ],
                )
              ]),
            )));
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordtextField) {
    return Padding(
        padding: EdgeInsets.only(bottom: 30),
        child: TextField(
          obscureText: isPasswordtextField ? isObscurePasswordTextField : false,
          decoration: InputDecoration(
              suffixIcon: isPasswordTextField
                  ? IconButton(
                      icon: Icon(Icons.remove_red_eye, color: Colors.grey),
                      onPressed: () {
                        setState(() {
                          //isObscurePasswordTextField =
                          //!isObscurePasswordTextField;
                        });
                      })
                  : null,
              contentPadding: EdgeInsets.only(bottom: 5),
              labelText: labelText,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: placeholder,
              hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              )),
        ));
  }
}
