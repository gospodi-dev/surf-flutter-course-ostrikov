import 'package:flutter/material.dart';
import 'package:places/ui/res/colors.dart';
import 'package:places/ui/res/textstyle.dart';

class BuildButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool isActive;

  BuildButton(this.title, this.icon, this.isActive);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Row(
        children: [
          Icon(
            icon,
            color: isActive ? textColorTitle : lightGrey,
          ),
          SizedBox(
            width: 9,
          ),
          Text(
            title,
            style: textDescription.copyWith(
                color: isActive ? textColorTitle : lightGrey),
          ),
        ],
      ),
    );
  }
}
