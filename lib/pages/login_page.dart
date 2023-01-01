import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import '../common/theme_helper.dart';
import 'forgot_password_page.dart';
import 'profile_page.dart';
import 'registration_page.dart';
import 'widgets/header_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double _headerHeight = 250;
  Key _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Container(
                  padding: EdgeInsets.fromLTRB(1, 20, 1, 1),
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [],
                      ),
                      SingleChildScrollView(
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.height * 0.4,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white),
                              child: ListTile(
                                  leading: Icon(
                                    Icons.shopping_bag_rounded,
                                    size: 60,
                                  ),
                                  title: Text(
                                    'T Ecommerce',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Welcome Back!',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SingleChildScrollView(
                        child: Row(
                          children: [
                            Text("Singup",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold)),
                            Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Container(
                                width: 2,
                                height: 30,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            Container(
                              child: TextField(
                                decoration: ThemeHelper().textInputDecoration(
                                    'Enter your user name'),
                              ),
                              decoration:
                                  ThemeHelper().inputBoxDecorationShaddow(),
                            ),
                            SizedBox(height: 30.0),
                            Container(
                              child: TextField(
                                obscureText: true,
                                decoration: ThemeHelper()
                                    .textInputDecoration('Enter your password'),
                              ),
                              decoration:
                                  ThemeHelper().inputBoxDecorationShaddow(),
                            ),
                            SizedBox(height: 15.0),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
                              alignment: Alignment.topRight,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ForgotPasswordPage()),
                                  );
                                },
                                child: Text(
                                  "Forgot your password?",
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration:
                                  ThemeHelper().buttonBoxDecoration(context),
                              child: ElevatedButton(
                                style: ThemeHelper().buttonStyle(),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                                  child: Text(
                                    'Sign In',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ProfilePage()));
                                },
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(15, 20, 10, 20),
                                  child: Text.rich(TextSpan(children: [
                                    TextSpan(
                                      text: "Don't have an account?",
                                    ),
                                    TextSpan(
                                      text: 'Create',
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      RegistrationPage()));
                                        },
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Theme.of(context).accentColor),
                                    ),
                                  ])),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                child: Text(
                                  "Sigin in With Social",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  child: FaIcon(
                                    FontAwesomeIcons.googlePlus,
                                    size: 35,
                                    color: HexColor("#EC2D2F"),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return ThemeHelper().alartDialog(
                                              "Google Plus",
                                              "You tap on GooglePlus social icon.",
                                              context);
                                        },
                                      );
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 30.0,
                                ),
                                GestureDetector(
                                  child: Container(
                                    padding: EdgeInsets.all(0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(
                                          width: 5, color: HexColor("#40ABF0")),
                                      color: HexColor("#40ABF0"),
                                    ),
                                    child: FaIcon(
                                      FontAwesomeIcons.twitter,
                                      size: 23,
                                      color: HexColor("#FFFFFF"),
                                    ),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return ThemeHelper().alartDialog(
                                              "Twitter",
                                              "You tap on Twitter social icon.",
                                              context);
                                        },
                                      );
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 30.0,
                                ),
                                GestureDetector(
                                  child: FaIcon(
                                    FontAwesomeIcons.facebook,
                                    size: 35,
                                    color: HexColor("#3E529C"),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return ThemeHelper().alartDialog(
                                              "Facebook",
                                              "You tap on Facebook social icon.",
                                              context);
                                        },
                                      );
                                    });
                                  },
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                children: [
                                  OutlinedButton.icon(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.download,
                                      size: 30,
                                    ),
                                    label: Text('Contunue as Guest'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
