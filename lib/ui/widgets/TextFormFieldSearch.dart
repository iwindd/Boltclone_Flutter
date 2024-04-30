// ignore: file_names
import 'package:flutter/material.dart';

class TextFormFieldSearch extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData prefixIcon;
  final IconData suffixIcon;

  const TextFormFieldSearch({
    super.key,
    required this.controller,
    required this.hintText,
    required this.prefixIcon,
    required this.suffixIcon,
  });

  @override
  State<TextFormFieldSearch> createState() => _TextFormFieldSearchState();
}

class _TextFormFieldSearchState extends State<TextFormFieldSearch> {
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      focusNode: _focusNode,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        filled: true,
        fillColor: _isFocused ? Colors.white : Colors.transparent,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: Colors.transparent, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(color: Colors.green.shade400, width: 2),
        ),
        prefixIcon: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(width: 3),
            SizedBox(
              height: 30,
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Icon(
                  widget.prefixIcon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(width: 10),
          ],
        ),
        suffixIcon: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(width: 10),
            Icon(
              widget.suffixIcon,
              color: Colors.black,
              size: 20,
            ),
            const SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
