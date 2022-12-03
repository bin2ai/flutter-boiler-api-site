//scrollable column
import 'package:flutter/material.dart';

SingleChildScrollView columnScrollable(List<Widget> children) {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        for (var child in children) child,
      ],
    ),
  );
}
