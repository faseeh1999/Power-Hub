import 'package:flutter/material.dart';

import 'package:form_validator/form_validator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:power_hub/auth.dart';
import 'package:power_hub/colors.dart';
import 'package:power_hub/forgotPassword.dart';
import 'package:power_hub/loader.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _auth = AuthService();
  bool isLoading = false;
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _pass = TextEditingController();
  //Validators
  final emailValidator =
      ValidationBuilder().email().maxLength(50).required().build();
  final passValidator =
      ValidationBuilder().minLength(5).maxLength(20).required().build();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return isLoading
        ? Loading()
        : Scaffold(
            backgroundColor: kprimary,
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: size.height * 0.1,
                        ),
                        Center(
                          child: Text(
                            "Login",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: size.width * 0.09,
                                    color: kTextColor)),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                        Text(
                          "Access Account",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: size.width * 0.05,
                                  color: kTextColor)),
                        ),
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //   crossAxisAlignment: CrossAxisAlignment.center,
                        //   children: [
                        //     Container(
                        //       width: size.width * 0.4,
                        //       height: size.height * 0.1,
                        //       decoration: BoxDecoration(
                        //         color: kCardbg,
                        //         borderRadius: BorderRadius.circular(15.0),
                        //       ),
                        //       child: IconButton(
                        //           icon: Icon(
                        //             FontAwesomeIcons.facebookF,
                        //             color: kIconColor,
                        //           ),
                        //           onPressed: null),
                        //     ),
                        //     Container(
                        //       width: size.width * 0.4,
                        //       height: size.height * 0.1,
                        //       decoration: BoxDecoration(
                        //         color: kCardbg,
                        //         borderRadius: BorderRadius.circular(15.0),
                        //       ),
                        //       child: IconButton(
                        //           icon: Icon(
                        //             FontAwesomeIcons.google,
                        //             color: kIconColor,
                        //           ),
                        //           onPressed: null),
                        //     )
                        //   ],
                        // ),
                        // SizedBox(
                        //   height: size.height * 0.05,
                        // ),
                        // Text(
                        //   "or Login With Email",
                        //   style: GoogleFonts.poppins(
                        //       textStyle: TextStyle(
                        //           letterSpacing: .6,
                        //           color: kSubtitleText,
                        //           fontWeight: FontWeight.w500)),
                        // ),
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                      ],
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "Email",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      color: kTextColor,
                                      fontSize: size.width * 0.045,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextFormField(
                              style: GoogleFonts.poppins(
                                  color: kTextColor, letterSpacing: 1.0),
                              validator: emailValidator,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              keyboardType: TextInputType.emailAddress,
                              controller: _email,
                              decoration: InputDecoration(
                                  errorStyle: GoogleFonts.poppins(
                                      fontSize: 13,
                                      color: kLineColor,
                                      letterSpacing: 1.0),
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor: kprimary,
                                  focusColor: kprimary,
                                  labelStyle: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: kTextColor,
                                        fontSize: size.width * 0.045,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  hintText: "example@gmail.com",
                                  hintStyle:
                                      GoogleFonts.poppins(color: kTextColor),
                                  contentPadding: EdgeInsets.all(15)),
                            ),
                          ),
                          SizedBox(height: size.height * 0.02),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "Password",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      color: kTextColor,
                                      fontSize: size.width * 0.045,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextFormField(
                              style: GoogleFonts.poppins(
                                  color: kTextColor, letterSpacing: 1.0),
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              keyboardType: TextInputType.visiblePassword,
                              validator: passValidator,
                              obscureText: true,
                              controller: _pass,
                              decoration: InputDecoration(
                                  errorStyle: GoogleFonts.poppins(
                                      fontSize: 13,
                                      color: kLineColor,
                                      letterSpacing: 1.0),
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor: kprimary,
                                  focusColor: kprimary,
                                  labelStyle: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: kTextColor,
                                        fontSize: size.width * 0.045,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  hintText: "**********",
                                  hintStyle:
                                      GoogleFonts.poppins(color: kTextColor),
                                  contentPadding: EdgeInsets.all(15)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height * 0.05),
                    Center(
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: kLineColor,
                                borderRadius: BorderRadius.circular(20)),
                            width: size.width * 0.7,
                            height: size.height * 0.08,
                            child: FlatButton(
                              onPressed: () async {
                                if (_formKey.currentState.validate()) {
                                  setState(() {
                                    isLoading = true;
                                  });
                                  await _auth
                                      .signInWithEmailAndPassword(
                                          _email.text, _pass.text)
                                      .whenComplete(() {
                                    setState(() {
                                      isLoading = false;
                                    });
                                  });
                                }
                              },
                              child: Text("Sign In",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          color: kTextColor,
                                          fontSize: size.width * 0.05))),
                            ),
                          ),
                          SizedBox(height: size.height * 0.05),
                          GestureDetector(
                            child: RichText(
                                text: TextSpan(
                                    text: "Forgot your password?",
                                    style: GoogleFonts.poppins(
                                        letterSpacing: 1.0,
                                        color: kLineColor,
                                        fontSize: size.width * 0.04),
                                    children: [
                                  TextSpan(
                                      text: "   Click Here",
                                      style: GoogleFonts.poppins(
                                        color: kTextColor,
                                        fontWeight: FontWeight.w600,
                                      ))
                                ])),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: ForgotPassword(),
                                      type: PageTransitionType.fade));
                            },
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
