import 'package:first_proj/Screen_Sign_in/sign_in.dart';
import 'package:first_proj/Widgets/profile_item.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool switchdefaultvalue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: SizedBox.shrink(),
        backgroundColor: Colors.white,
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Color(0xffFF5E00),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileItem(firsticon: Icons.person, title: 'Edit Profile'),
          ProfileItem(firsticon: Icons.key, title: 'Change Password'),
          ProfileItem(firsticon: Icons.wallet, title: 'My Cards'),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'App Setting',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w700,
                color: Color(0xffFF5E00),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: SwitchListTile(
              value: switchdefaultvalue,
              onChanged: (value) {
                setState(() {
                  switchdefaultvalue = value;
                });
              },
              activeTrackColor: Color(0xffFF5E00),
              secondary: Icon(
                Icons.notifications,
                color: Color(0xff804F1E),
                size: 38,
              ),
              title: Text(
                'Notifications',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff804F1E),
                ),
              ),
            ),
          ),
          ProfileItem(
            firsticon: Icons.language_outlined,
            title: 'Language',
            endicon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'English',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Color(0xff804F1E),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 24,
                  color: Color(0xff804F1E),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap:() {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: ((context) => SignIn())));} ,
            child: ProfileItem(
              firsticon: Icons.logout_outlined,
              title: 'Logout',
              endicon: SizedBox(),
            ),
          ),
        ],
      ),
    );
  }
}
