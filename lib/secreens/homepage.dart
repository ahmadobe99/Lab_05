import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:myapp/secreens/loginpage.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models.dart/urlmodel.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: Text("Welcome to our shop"),
              bottom: TabBar(tabs: [
                IconButton(onPressed: (() {}), icon: Icon(Icons.watch)),
                IconButton(onPressed: (() {}), icon: Icon(Icons.headphones)),
                IconButton(onPressed: (() {}), icon: Icon(Icons.message))
              ]),
            ),
            body: TabBarView(children: [
              ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    children: [
                      Image(
                          image: NetworkImage(
                              "https://th.bing.com/th/id/OIP.mju5ttqrFw7Y_18FN4mfrwHaEN?pid=ImgDet&rs=1")),
                      ListTile(
                        title: Text("Apple Watch Series 6"),
                        subtitle: Text("Price 250 dollors"),
                        leading: Icon(Icons.add),
                      ),
                      Image(
                          image: NetworkImage(
                              "https://gadgetpilipinas.net/wp-content/uploads/2020/09/Huawei-Watch-GT-2-Pro-and-Fit-1.png")),
                      ListTile(
                        title: Text("Huawei 2 GT Watch"),
                        subtitle: Text("Price 220 dollors"),
                        leading: Icon(Icons.add),
                      ),
                      Image(
                          image: NetworkImage(
                              "https://th.bing.com/th/id/OIP.h2fcqxxJKwM8C1C5TP7mBwHaHa?pid=ImgDet&rs=1")),
                      ListTile(
                        title: Text("Casio G-Shock"),
                        subtitle: Text("Price 220 dollors"),
                        leading: Icon(Icons.add),
                      ),
                    ],
                  ),
                ],
              ),
              ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    children: [
                      Image(
                          image: NetworkImage(
                              "https://th.bing.com/th/id/R.73fcc0a57cd29fe34db27bf466ff6fb9?rik=%2bioj0Jg5%2ffig2w&pid=ImgRaw&r=0")),
                      ListTile(
                        title: Text("Apple AirPods 2nd Generation"),
                        subtitle: Text("Price 220 dollors"),
                        leading: Icon(Icons.add),
                      ),
                      Image(
                          image: NetworkImage(
                              "https://th.bing.com/th/id/R.86563e0fa4e54ade2ca222193273a0f9?rik=82Sc%2b%2bzK5Hlahg&pid=ImgRaw&r=0")),
                      ListTile(
                        title: Text("Huawei AirPods Pro 5"),
                        subtitle: Text("Price 190 dollors"),
                        leading: Icon(Icons.add),
                      ),
                      Image(
                          image: NetworkImage(
                              "https://www.bhphotovideo.com/images/images2500x2500/sony_mdrhw300k_2_4ghz_digital_wireless_1037543.jpg")),
                      ListTile(
                        title: Text("Sony MDR-HW300K Wireless"),
                        subtitle: Text("Price 100 dollors"),
                        leading: Icon(Icons.add),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://th.bing.com/th/id/R.635818878369525dc82fddf35b0fc976?rik=Af3%2fX32%2f6hmApw&riu=http%3a%2f%2fusa.pingpongx.com%2fus%2fblog%2fcontent%2fimages%2fwordpress%2f2019%2f10%2fSocial-Media-01.jpg&ehk=FP6KGicf9wF%2bJnr2DWWwUE3XoRsInoIFstTQUF8Azc0%3d&risl=&pid=ImgRaw&r=0"))),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: Facebook_fun,
                      child: Column(
                        children: [
                          ListTile(
                            title: Text("faebook"),
                            subtitle: Text("join our facebook page"),
                            leading: Icon(Icons.facebook),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: insta_fun,
                      child: Column(
                        children: [
                          ListTile(
                            title: Text("instagram"),
                            subtitle: Text("join our instagram page"),
                            leading: Icon(Ionicons.logo_instagram),
                          ),
                        ],
                      ),
                    ),
                    Divider(height: 200,),
                    ElevatedButton.icon(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return loginpage();
                      },));
                      
                    }, icon:Icon(Icons.login) , label: Text("Log in page"))
                  ],
                ),
              ),
            ])));
  }
}
