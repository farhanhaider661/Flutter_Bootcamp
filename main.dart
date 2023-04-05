import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: MyTextPage());
  }
}

class MyTextPage extends StatelessWidget {
  var emailText = TextEditingController();
  var passText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Flutter Login Page")),
        body: Center(
            child: Container(
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailText,
                        decoration: InputDecoration(
                          hintText: 'Enter email',
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                  color: Colors.deepOrange, width: 2)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                  color: Colors.blueAccent, width: 2)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide:
                                  BorderSide(color: Colors.black45, width: 2)),
                          // suffixText: "Username already exits",
                          suffixIcon: IconButton(
                            icon: Icon(Icons.remove_red_eye,
                                color: Colors.orange),
                            onPressed: () {},
                          ),
                          prefixIcon: Icon(Icons.email, color: Colors.orange),
                        )),
                    Container(
                      height: 11,
                    ),
                    TextField(
                      obscureText: true,
                      obscuringCharacter: '*',
                      controller: passText,
                      decoration: InputDecoration(
                        hintText: 'Enter password',
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide:
                                BorderSide(color: Colors.deepOrange, width: 2)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide:
                                BorderSide(color: Colors.blueAccent, width: 2)),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          String uname = emailText.text.toString();
                          String upass = passText.text;
                          print("EMAIL:$uname,Password:$upass");
                        },
                        child: Text('Login'))
                  ],
                ))));
  }
}
