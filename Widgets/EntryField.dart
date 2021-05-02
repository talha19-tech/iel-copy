import 'package:flutter/material.dart';

class EntryField extends StatefulWidget {
  final String label;
  final TextInputType textInputType;
  final TextEditingController controller;
  final bool obscure;
  final IconData icon;
  EntryField(
      this.label, this.textInputType, this.controller, this.obscure, this.icon);
  @override
  _EntryFieldState createState() => _EntryFieldState();
}

class _EntryFieldState extends State<EntryField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              obscureText: widget.obscure,
              controller: widget.controller,
              keyboardType: widget.textInputType,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                labelText: widget.label,
                labelStyle: TextStyle(color: Colors.black),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
              ),
            ),
          ),
          Icon(
            widget.icon,
            color: Colors.grey[700],
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
