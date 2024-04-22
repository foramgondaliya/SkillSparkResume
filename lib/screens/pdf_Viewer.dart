import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class pdf_viewer extends StatefulWidget {
  const pdf_viewer({super.key});

  @override
  State<pdf_viewer> createState() => _pdf_viewerState();
}

class _pdf_viewerState extends State<pdf_viewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16, left: 16, top: 25),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Name",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Designation",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Divider(
                    color: Colors.black,
                    thickness: 2,
                  ),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 50,
                    ),
                    Text(
                      "CONTACT",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                    Text(
                      "CONTACT",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
