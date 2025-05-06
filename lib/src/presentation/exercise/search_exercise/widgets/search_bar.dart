import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  final String hintText;
  final VoidCallback onSearchTap;
  final VoidCallback onAddTap;

  const SearchBarWidget({
    super.key,
    required this.hintText,
    required this.onSearchTap,
    required this.onAddTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 98,
        width: 412,
        decoration: BoxDecoration(
          color: const Color(0xFFD9D9D9),
          borderRadius: BorderRadius.circular(11),
          border: Border.all(color: Colors.black, width: 1),
          boxShadow: const [
            BoxShadow(
                color: Color(0x66000000),
                offset: Offset(0, 4),
                blurRadius: 4,
                spreadRadius: 6),
          ],
        ),
        child: Stack(children: [
          Positioned(
            top: 0,
            left: 52,
            child: SizedBox(
              width: 308,
              height: 97,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  hintText,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF848484),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 29,
            child: GestureDetector(
              onTap: onSearchTap,
              child: SizedBox(
                width: 40,
                height: 40,
                child: Icon(Icons.search, size: 40, color: Colors.black),
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 337,
            child: GestureDetector(
              onTap: onAddTap,
              child: SizedBox(
                height: 40,
                width: 41,
                child: Icon(Icons.add, size: 40, color: Colors.black),
              ),
            ),
          ),
        ]));
  }
}
