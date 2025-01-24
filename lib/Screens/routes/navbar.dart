import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kiingrox/Screens/main/home.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    // Draws(),
    // Notifications(),
    // Wallet(),
    // Profile()
  ];

  get accentColor => null;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        shape: CircleBorder(),
        onPressed: () {},
        child: Icon(
          Icons.shopping_bag,
          color: const Color(0xFF0A2F4E),
        ),
      ),
      appBar: AppBar(
        title: Text(
          "KingRox",
          textAlign: TextAlign.left,
          style: GoogleFonts.poppins(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF0A2F4E),
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white10,
              ),
              child: Center(
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                    )),
              ),
            ),
          )
        ],
      ),
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(0.2),
            )
          ],
        ),
        padding: EdgeInsets.symmetric(vertical: 8),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 10,
              ),
              _buildNavItem(
                index: 0,
                isSelected: _selectedIndex == 0,
                icon: Icons.home,
                label: "Home",
              ),
              SizedBox(
                width: 10,
              ),
              _buildNavItem(
                index: 1,
                isSelected: _selectedIndex == 1,
                icon: Icons.search,
                label: "Search",
              ),
              SizedBox(
                width: 10,
              ),
              _buildNavItem(
                index: 2,
                isSelected: _selectedIndex == 2,
                icon: Icons.notification_add,
                label: "Alerts",
              ),
              SizedBox(
                width: 10,
              ),
              _buildNavItem(
                index: 3,
                isSelected: _selectedIndex == 3,
                icon: Icons.wallet,
                label: "Wallet",
              ),
              SizedBox(
                width: 10,
              ),
              _buildNavItem(
                index: 4,
                isSelected: _selectedIndex == 4,
                icon: Icons.person,
                label: "Profile",
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required int index,
    required bool isSelected,
    required IconData icon,
    required String label,
  }) {
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedContainer(
            height: 70,
            width: 70,
            duration: Duration(milliseconds: 300),
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 4),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: isSelected ? const Color(0xFF0A2F4E) : Colors.grey,
                  size: isSelected ? 30 : 25,
                ),
                SizedBox(height: 4),
                Text(
                  label,
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    color: Color(0xFF0A2F4E),
                    fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4),
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            width: isSelected ? 8 : 0,
            height: isSelected ? 8 : 0,
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
