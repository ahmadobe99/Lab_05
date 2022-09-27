 import 'package:flutter/material.dart';
import 'package:myapp/secreens/loginpage.dart';
void main(){
   runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Myapp(),
  ));

}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return loginpage();
  }
}