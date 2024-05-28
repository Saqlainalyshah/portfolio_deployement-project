import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({
    super.key,
    this.onTap,
  });
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 40,
      backgroundColor: Colors.blue,
      child: Icon(
        Icons.person,
        size: 30,
        //color: Colors.blue,
      ),
    );
  }
}
