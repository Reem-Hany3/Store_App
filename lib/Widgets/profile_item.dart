import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key,
    required this.firsticon,
    required this.title,
    this.endicon, this.onTap,
  });
  final IconData firsticon;
  final String title;
  final Widget? endicon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: ListTile(

        leading: Icon(firsticon, color: Color(0xff804F1E), size: 38),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: Color(0xff804F1E),
          ),
        ),
        trailing:
            endicon ??
            Icon(Icons.arrow_forward_ios, size: 24, color: Color(0xff804F1E)),

      ),
    );
  }
}
