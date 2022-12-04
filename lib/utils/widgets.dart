//scrollable column
import 'package:flutter/material.dart';

SingleChildScrollView columnScrollable(List<Widget> children) {
  return SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        for (var child in children) child,
      ],
    ),
  );
}

//scrollable row
SingleChildScrollView rowScrollable(List<Widget> children) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        for (var child in children) child,
      ],
    ),
  );
}

//show networkImage as widget
Widget networkImage(String url) {
  return Image.network(
    url,
    loadingBuilder: (context, child, loadingProgress) {
      if (loadingProgress == null) return child;
      return Center(
        child: CircularProgressIndicator(
          value: loadingProgress.expectedTotalBytes != null
              ? loadingProgress.cumulativeBytesLoaded /
                  loadingProgress.expectedTotalBytes!
              : null,
        ),
      );
    },
  );
}
