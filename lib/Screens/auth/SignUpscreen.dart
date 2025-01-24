import 'package:flutter/material.dart';
import 'package:kiingrox/Screens/auth/loginScreen.dart';
import 'package:kiingrox/const/button.dart';
import 'package:kiingrox/const/textfield.dart';
import 'package:kiingrox/const/texttype.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  bool isChecked = false;
  bool isMaleSelected = true;
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
          SingleChildScrollView(
            child: Column(
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
                            text: "Sign Up",
                            color: const Color(0xFF0A2F4E),
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 176,
                                child: CustomTextField(
                                  text: "Enter First Name",
                                ),
                              ),
                              SizedBox(
                                width: 176,
                                child: CustomTextField(
                                  text: "Enter Last Name",
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 176,
                                child: CustomTextField(
                                  text: "Enter Date of Birth",
                                ),
                              ),
                              SizedBox(
                                width: 176,
                                child: CustomTextField(
                                  text: "Enter Gender",
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 119.44,
                                child: CustomTextField(
                                  text: "233",
                                ),
                              ),
                              SizedBox(
                                width: 231,
                                child: CustomTextField(
                                  text: "Enter Mobile Number",
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 150,
                                child: CustomTextField(
                                  text: "Nationality",
                                ),
                              ),
                              SizedBox(
                                width: 202,
                                child: CustomTextField(
                                  text: "Enter Residence Country",
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          CustomTextField(
                            text: "Enter Referral Code",
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isMaleSelected = true;
                                  });
                                },
                                child: Container(
                                  width: 173,
                                  height: 41,
                                  decoration: BoxDecoration(
                                    color: isMaleSelected
                                        ? const Color(0xFFFCCE1B)
                                        : const Color(0xFFE6E6E6),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  child: Center(
                                    child: CustomTextScreen(
                                      text: "Male",
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                  width:
                                      16), // Add some space between the buttons
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isMaleSelected = false;
                                  });
                                },
                                child: Container(
                                  width: 173,
                                  height: 41,
                                  decoration: BoxDecoration(
                                    color: isMaleSelected
                                        ? const Color(0xFFE6E6E6)
                                        : const Color(0xFFFCCE1B),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  child: Center(
                                    child: CustomTextScreen(
                                      text: "Female",
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          CustomTextScreen(
                            text: "Select OTP verification Method Number",
                            color: const Color(0xFF0A2F4E),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
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
                            height: 20,
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
                                text:
                                    "I agree to the Agreement & Privacy Policy",
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
                            text: "Sent OTP",
                          ),
                        ],
                      ),
                    )),
                Container(),
              ],
            ),
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
