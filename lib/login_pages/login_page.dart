import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/home_page.dart/bottomnav.dart';
import 'package:market/provider.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final count = Provider.of<HomeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffF9F9F9),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 14, top: 14),
              child: Text(
                "Sign up",
                style: TextStyle(
                    fontSize: 34,
                    color: Color(0xff222222),
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 73,
            ),
            Container(
              height: 64,
              margin: EdgeInsets.only(left: 16, right: 16),
              padding: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8,
                    spreadRadius: 0,
                    color: Color.fromRGBO(0, 0, 0, 0.05),
                  )
                ],
              ),
              child: TextFormField(
                onChanged: (val) {
                  if (val.isNotEmpty) {
                    count.isTrue[0] = true;
                    setState(() {});
                  }
                },
                decoration: InputDecoration(
                  labelText: "Name",
                  labelStyle: TextStyle(color: Color(0xff222222)),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  suffixIcon: count.isTrue[0]
                      ? Icon(Icons.check, color: Color(0xff2AA952))
                      : null,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 64,
              margin: EdgeInsets.only(left: 16, right: 16),
              padding: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8,
                    spreadRadius: 0,
                    color: Color.fromRGBO(0, 0, 0, 0.05),
                  )
                ],
              ),
              child: TextFormField(
                onChanged: (val) {
                  if (val.isNotEmpty) {
                    count.isTrue[1] = true;
                    setState(() {});
                  }
                },
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(color: Color(0xff222222)),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  suffixIcon: count.isTrue[1]
                      ? Icon(Icons.check, color: Color(0xff2AA952))
                      : null,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 64,
              margin: EdgeInsets.only(left: 16, right: 16),
              padding: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8,
                    spreadRadius: 0,
                    color: Color.fromRGBO(0, 0, 0, 0.05),
                  )
                ],
              ),
              child: TextFormField(
                onChanged: (val) {
                  if (val.isNotEmpty) {
                    count.isTrue[2] = true;
                    setState(() {});
                  }
                },
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(color: Color(0xff222222)),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  suffixIcon: count.isTrue[2]
                      ? Icon(Icons.check, color: Color(0xff2AA952))
                      : null,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 16, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Already have an account?"),
                  Icon(
                    Icons.arrow_right_alt_outlined,
                    color: Color(0xffDB3022),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return BottomNav();
                }));
              },
              child: Container(
                height: 48,
                margin: EdgeInsets.only(left: 16, right: 16, top: 28),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(0xffDB3022),
                    boxShadow: const [
                      BoxShadow(
                          spreadRadius: 0,
                          blurRadius: 8,
                          color: Color.fromRGBO(211, 38, 38, 0.25))
                    ],
                    borderRadius: BorderRadius.circular(25)),
                child: const Text(
                  "SIGN UP",
                  style: TextStyle(fontSize: 14, color: Color(0xffffffff)),
                ),
              ),
            ),
           const  SizedBox(
              height: 126,
            ),
           const  Center(
                child: Text(
              "Or sign up with social account",
              style: TextStyle(fontSize: 14, color: Color(0xff222222)),
            )),
           const  SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 92,
                  height: 64,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      image:const  DecorationImage(
                          image: AssetImage("assets/foto/Google.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(24),
                      color: Color(0xffffffff),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 8,
                            spreadRadius: 0,
                            color: Color.fromRGBO(0, 0, 0, 0.05))
                      ]),
                ),
                Container(
                  width: 92,
                  height: 64,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      image:const DecorationImage(
                          image: AssetImage("assets/foto/Facebook.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(24),
                      color: Color(0xffffffff),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 8,
                            spreadRadius: 0,
                            color: Color.fromRGBO(0, 0, 0, 0.05))
                      ]),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
