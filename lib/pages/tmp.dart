import 'package:flutter/material.dart';

Widget priceBox(isSelected, title, price, description) {
  return Container(
    width: 300,
    height: 300,
    decoration: BoxDecoration(
      color: isSelected ? Colors.white : Colors.grey,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Column(
      children: [
        const SizedBox(height: 20),
        Text(
          title,
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 20),
        Text(
          price.toString(),
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 20),
        Text(
          description,
          style: const TextStyle(fontSize: 20),
        ),
      ],
    ),
  );
}
