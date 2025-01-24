import 'package:flutter/material.dart';
import 'package:kiingrox/Screens/auth/SignUpscreen.dart';
import 'package:kiingrox/Screens/auth/loginScreen.dart';
import 'package:kiingrox/const/button.dart';
import 'package:kiingrox/const/textfield.dart';
import 'package:kiingrox/const/texttype.dart';

class Loginscreenmobile extends StatefulWidget {
  const Loginscreenmobile({super.key});

  @override
  State<Loginscreenmobile> createState() => _LoginscreenmobileState();
}

class _LoginscreenmobileState extends State<Loginscreenmobile> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 231,
                child: Stack(
                  children: [
                    Image.network(
                      "https://media.istockphoto.com/id/1390650720/photo/digital-network-connection-abstract-connection-of-dots-and-lines-technology-background-plexus.jpg?s=612x612&w=is&k=20&c=wj8JfyS8MPh5_eNx5X_CMM93eVGo9q_j7f1nxdMR2tg=",
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomTextScreen(
                            text: "KingRox",
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                          CustomTextScreen(
                            text: "Need Help?",
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 210,
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextScreen(
                          text: "Login",
                          color: const Color(0xFF0A2F4E),
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        CustomTextField(
                          text: "Enter Mobile Address",
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          text: "Enter Password",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: isChecked,
                              onChanged: (bool? newValue) {
                                setState(() {
                                  isChecked = newValue!;
                                });
                              },
                              checkColor: const Color(0xFF022F4E),
                              activeColor: Color(0xFF022F4E),
                            ),
                            CustomTextScreen(
                              text: "Remember Me",
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CustomButton(
                          onTap: () {},
                          text: "Login",
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Loginscreen()),
                                );
                              },
                              child: CustomTextScreen(
                                text: "Login with Email Number",
                                color: const Color(0xFF0A2F4E),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            socialMedia(""),
                            SizedBox(
                              width: 10,
                            ),
                            socialMedia(""),
                            SizedBox(
                              width: 10,
                            ),
                            socialMedia(""),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Signupscreen()),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomTextScreen(
                                    text: "Are you a New",
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  Row(
                                    children: [
                                      CustomTextScreen(
                                        text: "User?",
                                        color:
                                            const Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      CustomTextScreen(
                                        text: "Register Now",
                                        color: const Color(0xFF0E333C),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.arrow_circle_right_outlined,
                                size: 30,
                                color: const Color(0xFF0A2F4E),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
              Container(),
            ],
          ),
        ],
      ),
    );
  }
}

Widget socialMedia(String img) {
  return Container(
    height: 45,
    width: 45,
    decoration:
        BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(100))),
    child: Center(
        child: ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(100)),
      child: Image.network(
          "https://cdn.pixabay.com/photo/2021/06/15/12/28/tiktok-6338429_1280.png"),
    )),
  );
}
