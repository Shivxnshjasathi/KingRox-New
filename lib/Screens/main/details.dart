import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kiingrox/Screens/main/home.dart';
import 'package:kiingrox/Screens/main/standard.dart';
import 'package:kiingrox/const/button.dart';
import 'package:kiingrox/const/button2.dart';
import 'package:kiingrox/const/texttype.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A2F4E),
        title: CustomTextScreen(
          text: "Details",
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            detailstile(),
            SizedBox(
              height: 10,
            ),
            CustomTextScreen(
              text: "Choose your free Ticket",
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Standard()),
                  );
                },
                child: newtitle("Standard")),
            SizedBox(
              height: 10,
            ),
            newtitle("Share Ticket"),
            SizedBox(
              height: 10,
            ),
            newtitle("Group Ticket"),
          ],
        ),
      ),
    );
  }
}

Widget detailstile() {
  return Container(
    height: 148,
    decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Shadow color
            spreadRadius: 2, // Spread radius
            blurRadius: 5, // Blur radius
            offset: const Offset(0, 4), // Shadow position (x, y)
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(20))),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          SizedBox(
            height: 129,
            width: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Image.network(
                "https://images.pexels.com/photos/47344/dollar-currency-money-us-dollar-47344.jpeg?auto=compress&cs=tinysrgb&w=600",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Buy Hoodie and",
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 3,
              ),
              GradientText(
                'Win 1 Million Cash Prize',
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFF167cbf),
                    const Color(0xFFfcce19),
                  ],
                ),
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "Free Raffle Ticket Qty",
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: 110,
                      height: 51,
                      child: Stack(
                        children: [
                          CustomButton2(
                            onTap: () {},
                            text: "",
                          ),
                          Center(
                            child: CustomTextScreen(
                              text: "From ₹28.42",
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                      width: 110,
                      height: 51,
                      child: Stack(
                        children: [
                          CustomButton(
                            onTap: () {},
                            text: "",
                          ),
                          Center(
                            child: CustomTextScreen(
                              text: "Breakdown",
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ],
          )
        ],
      ),
    ),
  );
}

Widget newtitle(String name) {
  return Container(
    height: 40,
    decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Shadow color
            spreadRadius: 2, // Spread radius
            blurRadius: 5, // Blur radius
            offset: const Offset(0, 4), // Shadow position (x, y)
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(8))),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomTextScreen(
            text: name,
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: const Color(0xFF130F2680),
          ),
        ],
      ),
    ),
  );
}
