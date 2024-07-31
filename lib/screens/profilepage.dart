// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
//import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                ),
                AvatarImage(),
                const SizedBox(height: 10),
                const SizedBox(height: 10),
                const Text(
                  'Pari Gujral',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Poppins",
                  ),
                ),
                const SizedBox(height: 15),
                ProfileListItems(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AvatarImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.purple, // Add border color
          width: 4, // Border width
        ),
        image: const DecorationImage(
          image: AssetImage('assets/images/user.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class ProfileListItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          const ProfileListItem(
            icon: Icons.people,
            text: 'Communities',
            // subtitle: "Total Joined: 3",
          ),
          const ProfileListItem(
            icon: Icons.payment,
            text: 'Investment History',
          ),
          const ProfileListItem(
            icon: Icons.edit_document,
            text: 'KYC',
          ),
          const ProfileListItem(
            icon: Icons.verified_user,
            text: 'Help & Support',
          ),
          const ProfileListItem(
            icon: Icons.settings,
            text: 'Settings',
          ),
          const ProfileListItem(
            icon: Icons.logout,
            text: 'Logout',
            hasNavigation: false,
          ),
        ],
      ),
    );
  }
}

class ProfileListItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final String subtitle;
  final bool hasNavigation;

  const ProfileListItem({
    Key? key,
    this.icon = Icons.abc,
    this.text = "",
    this.subtitle = "",
    this.hasNavigation = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 10).copyWith(bottom: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.grey.shade300,
        border: Border.all(color: Colors.purple, width: 2), // Add purple border
      ),
      child: Row(
        children: <Widget>[
          Icon(this.icon, size: 25),
          const SizedBox(width: 15),
          Expanded(
            child: Text(
              this.text,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: "Poppins",
              ),
            ),
          ),
          if (hasNavigation)
            const Icon(Icons.arrow_forward_ios_sharp), // Right aligned arrow
        ],
      ),
    );
  }
}
