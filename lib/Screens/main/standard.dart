import 'package:flutter/material.dart';
import 'package:kiingrox/const/texttype.dart';

class Standard extends StatefulWidget {
  const Standard({super.key});

  @override
  State<Standard> createState() => _StandardState();
}

class _StandardState extends State<Standard> {
  int _selectedOption = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A2F4E),
        title: CustomTextScreen(
          text: "Standard",
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
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: RadioListTile<int>(
                    value: 0,
                    activeColor: const Color(0xFF157CBF),
                    groupValue: _selectedOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedOption = value!;
                      });
                    },
                    title: CustomTextScreen(
                      text: "Available",
                      color: Colors.black,
                      fontSize: 14.67,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Expanded(
                  child: RadioListTile<int>(
                    activeColor: const Color(0xFF157CBF),
                    value: 1,
                    groupValue: _selectedOption,
                    onChanged: (value) {
                      setState(() {
                        _selectedOption = value!;
                      });
                    },
                    title: CustomTextScreen(
                      text: "Sold",
                      color: Colors.black,
                      fontSize: 14.67,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: Center(
                child: _selectedOption == 0
                    ? Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'You selected Option 1',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(height: 10),
                          Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 50,
                          ),
                        ],
                      )
                    : Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'You selected Option 2',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(height: 10),
                          Icon(
                            Icons.error_outline,
                            color: Colors.red,
                            size: 50,
                          ),
                        ],
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
