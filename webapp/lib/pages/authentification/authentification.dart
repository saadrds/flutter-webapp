import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webapp/constants/style.dart';
import 'package:webapp/routing/routes.dart';
import 'package:webapp/widgets/custom_text.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 400),
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Image.asset("assets/icons/ve_logo.png"),
                  ),
                  Expanded(child: Container()),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text("Login",
                      style: GoogleFonts.roboto(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CustomText(
                    text: "Welcome back to the admin panel.",
                    color: lightGrey,
                    size: 14,
                    weight: FontWeight.normal,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "abc@domain.com",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "123",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Get.offAllNamed(rootRoute);
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: active, borderRadius: BorderRadius.circular(20)),
                  alignment: Alignment.center,
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: CustomText(
                    text: "Login",
                    color: Colors.white,
                    size: 14,
                    weight: FontWeight.normal,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(text: "Do not have admin credentials? "),
                TextSpan(
                    text: "Request Credentials! ",
                    style: TextStyle(color: active))
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
