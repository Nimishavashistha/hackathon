import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon/app/module/auth/controller/auth_controller.dart';

class AuthForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      builder: (controller) => SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2.4,
              width: MediaQuery.of(context).size.width / 3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/cashflow_logo.png'))),
            ),
            Container(
              child: Form(
                key: controller.formkey,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 5.0, bottom: 15, left: 10, right: 10),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, right: 14, left: 14, bottom: 8),
                        child: TextFormField(
                            key: ValueKey("email"),
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                                hintText: "Email address",
                                hintStyle: TextStyle(
                                  fontSize: 15,
                                ),
                                contentPadding: EdgeInsets.fromLTRB(
                                    20.0, 15.0, 20.0, 15.0)),
                            cursorColor: Colors.black,
                            validator: (value) {
                              return controller.emailValidator(value);
                            },
                            onSaved: (value) {
                              controller.userEmail = value;
                            }),
                      ),
                      if (!controller.isLogin)
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 5.0, right: 14, left: 14, bottom: 8),
                          child: TextFormField(
                            key: ValueKey("username"),
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                                hintText: "Username",
                                hintStyle: TextStyle(
                                  fontSize: 15,
                                ),
                                contentPadding: EdgeInsets.fromLTRB(
                                    20.0, 15.0, 20.0, 15.0)),
                            cursorColor: Colors.black,
                            validator: (value) {
                              return controller.usernameValidation(value);
                            },
                          ),
                        ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 5.0, right: 14, left: 14, bottom: 8),
                        child: TextFormField(
                          key: ValueKey("password"),
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                          obscureText: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              hintText: "Password",
                              hintStyle: TextStyle(
                                fontSize: 15,
                              ),
                              contentPadding:
                                  EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0)),
                          validator: (value) {
                            return controller.passwordValidator(value);
                          },
                          cursorColor: Colors.black,
                        ),
                      ),
                      if (controller.isLoading) CircularProgressIndicator(),
                      if (!controller.isLoading)
                        InkWell(
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2,
                            height: MediaQuery.of(context).size.height / 18,
                            margin: EdgeInsets.only(top: 25),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black,
                            ),
                            child: Center(
                              child: Text(
                                controller.isLogin ? 'Login' : 'Signup',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      InkWell(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          height: MediaQuery.of(context).size.height / 18,
                          margin: EdgeInsets.only(top: 25),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black,
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 30.0,
                                  width: 30.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/google.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Text(
                                  "Sign in with Google",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      if (!controller.isLoading)
                        TextButton(
                            onPressed: () {
                              controller.switchLogin();
                            },
                            child: Text(
                              controller.isLogin
                                  ? "Create new account"
                                  : "I already have an account",
                              style: TextStyle(color: Colors.deepPurpleAccent),
                            ),
                            style: TextButton.styleFrom(
                              textStyle: TextStyle(
                                fontSize: 16.0,
                              ),
                            ))
                    ]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
