import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/secreens/homepage.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            title: Row(
          children: [Text("Home Page"), Icon(Icons.home)],
        )),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://th.bing.com/th/id/R.87fc834c0f4ad613fb34aae77ca0a192?rik=Gf6tJ4ZnQUAmIA&pid=ImgRaw&r=0"))),
          child: Container(
            child: Column(
              children: [
                Text(
                  "Welcome to our Accessories shop",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 212, 200, 166)),
                ),
                Divider(
                  height: 30,
                ),
                Text(
                  "Plese Enter your email and password ",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 170, 138, 51)),
                ),
                Divider(
                  height: 30,
                ),
                TextField(
                  controller: email,
                  decoration: InputDecoration(
                      label: Text("Enter your email"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: "Username@gmail.com"),
                ),
                Divider(
                  height: 20,
                ),
                TextField(
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                      label: Text("Enetr your password "),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                Divider(
                  height: 40,
                ),
                ElevatedButton.icon(
                    onPressed: (() {
                      if (email.text == "ahmad@gmail.com" &&
                          password.text == "1234") {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              actions: [
                                Container(
                                  child: Text(
                                      "successfully log in press to go to home page"),
                                ),
                                ElevatedButton.icon(
                                    onPressed: (() {
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context) {
                                          return Homepage();
                                        },
                                      ));
                                    }),
                                    icon: Icon(Icons.home),
                                    label: Text("Home page"))
                              ],
                            );
                          },
                        );
                      } else
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              actions: [
                                Container(
                                  child: Text(
                                      "your email and password not correct please try again!"),
                                ),
                              ],
                            );
                          },
                        );
                    }),
                    icon: Icon(Icons.login),
                    label: Text("Login")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
