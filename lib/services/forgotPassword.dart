import 'package:flutter/material.dart';

import 'package:form_validator/form_validator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:power_hub/services/auth.dart';
import 'package:power_hub/shared/colors.dart';
import 'package:power_hub/shared/loader.dart';
import 'package:power_hub/authentication/wrapper.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _auth = AuthService();
  bool isLoading = false;
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();

  //Validators
  final emailValidator =
      ValidationBuilder().email().maxLength(50).required().build();

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
                            "Reset Password",
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
                          "Recover Account",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: size.width * 0.05,
                                  color: kTextColor)),
                        ),
                        SizedBox(
                          height: size.height * 0.05,
                        ),
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
                        ],
                      ),
                    ),
                    SizedBox(height: size.height * 0.05),
                    Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: size.height * 0.25,
                          ),
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
                                      .sendResetPasswordEmail(_email.text)
                                      .whenComplete(() {
                                    setState(() {
                                      isLoading = false;
                                    });
                                    Widget okButton = FlatButton(
                                      child: Text(
                                        "OK",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.bold,
                                            color: kLineColor,
                                            letterSpacing: 1.5),
                                      ),
                                      onPressed: () {
                                        Navigator.pushAndRemoveUntil(
                                            context,
                                            PageTransition(
                                                type: PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 500),
                                                child: Wrapper()),
                                            (route) => false);
                                      },
                                    );

                                    // set up the AlertDialog
                                    AlertDialog alert = AlertDialog(
                                      backgroundColor: kprimary,
                                      title: Text(
                                        "Link Sent",
                                        style: GoogleFonts.poppins(
                                            color: kTextColor,
                                            letterSpacing: 1.5),
                                      ),
                                      content: Text(
                                        "A Password reset link has been sent to your email.",
                                        style: GoogleFonts.poppins(
                                            color: kTextColor,
                                            letterSpacing: 1.5),
                                      ),
                                      actions: [
                                        okButton,
                                      ],
                                    );
                                    // show the dialog
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return alert;
                                      },
                                    );
                                  });
                                }
                              },
                              child: Text("Reset Password",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          color: kTextColor,
                                          fontSize: size.width * 0.05))),
                            ),
                          ),
                          SizedBox(height: size.height * 0.05),
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
