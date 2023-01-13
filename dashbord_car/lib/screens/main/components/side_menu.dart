import 'package:flutter/material.dart';
import '../../booking/booking_screen.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset("assets/images/motiv.png"),
          ),
          DrawerListTile(
            title: "Dashboard",
            icon: Icons.dashboard_outlined,
            press: () {},
          ),
          DrawerListTile(
            title: "Assets",
            icon: Icons.add_comment_outlined,
            press: () {},
          ),
          DrawerListTile(
            title: "booking",
            icon: Icons.directions_car,
            press: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => Booking_Scrren()));
            },
          ),
          DrawerListTile(
            title: "Sells car",
            icon: Icons.shopping_basket,
            press: () {},
          ),
          DrawerListTile(
            title: "Buy Cars",
            icon: Icons.shopping_cart,
            press: () {},
          ),
          DrawerListTile(
            title: "Services",
            icon: Icons.design_services,
            press: () {},
          ),
          DrawerListTile(
            title: "Calender",
            icon: Icons.calendar_today,
            press: () {},
          ),
          DrawerListTile(
            title: "Messages",
            icon: Icons.message,
            press: () {},
          ),
          SizedBox(
            height: 50.0,
          ),
          DrawerListTile(
            title: "Settings",
            icon: Icons.settings,
            press: () {},
          ),
          DrawerListTile(
            title: "Log Out",
            icon: Icons.logout,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: Icon(
        icon,
        color: Colors.white54,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
