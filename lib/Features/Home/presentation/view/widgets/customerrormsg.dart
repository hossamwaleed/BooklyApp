import 'package:flutter/material.dart';

class customerrormsg extends StatelessWidget {
  const customerrormsg({required this.errmsg,super.key});
final String errmsg;
  @override
  Widget build(BuildContext context) {
    return Text(errmsg);
  }
}