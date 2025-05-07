import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar customAppbar({required String title}) =>
    AppBar(title: Text(title), centerTitle: true);
