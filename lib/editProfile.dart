import 'package:flutter/material.dart';
import 'package:profile.dart/profile.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  get isPasswordTextField => false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.only(left: 15, top: 30, right: 15),
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: ListView(children: [
                Center(
                  child: Stack(
                    children: [
                      Container(
                          width: 170,
                          height: 170,
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
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(width: 4, color: Colors.white),
                                  color: Colors.greenAccent),
                              child: InkWell(
                                  child: Icon(
                                    Icons.edit,
                                    color: Colors.white,
                                  ),
                                  onTap: () {
                                    print("Edit icon clicked");
                                    showModalBottomSheet(
                                        context: context,
                                        builder: (context) => bottomSheet());
                                  })))
                    ],
                  ),
                ),
                SizedBox(height: 30),
                buildTextField(
                  "Name",
                  "Thamasha Ruwanthi",
                  false,
                ),
                buildTextField("Email", "thamasha@gmail.com", false),
                buildTextField("Age", "24", false),
                buildTextField("Gender", "female", false),
                buildTextField("Region", "Sri Lanka", false),
                //buildTextField("location", "Sri Lanka", false),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text("CANCEL",
                          style: TextStyle(
                              fontSize: 18,
                              letterSpacing: 2,
                              color: Colors.black)),
                      style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 18),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text("UPDATE",
                            style: TextStyle(
                                fontSize: 18,
                                letterSpacing: 2,
                                color: Colors.white)),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.greenAccent,
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 18),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
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
          // obscureText: isPasswordtextField ? isObscurePasswordTextField : false,
          decoration: InputDecoration(
              suffixIcon: isPasswordTextField
                  ? IconButton(
                      icon: Icon(Icons.remove_red_eye, color: Colors.grey),
                      onPressed: () {
                        setState(() {
                          // isObscurePasswordTextField =
                          //     !isObscurePasswordTextField;
                        });
                      })
                  : null,
              contentPadding: const EdgeInsets.only(bottom: 5),
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

  bottomSheet() {}
}
