import 'package:flutter/material.dart';
import '../../../controller/hexcolor_convert.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({
    Key? key,
    required HexColor bgPrimary,
    required TextEditingController controller,
  })  : _bgPrimary = bgPrimary,
        _controller = controller,
        super(key: key);

  final HexColor _bgPrimary;
  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _bgPrimary,
      height: 50,
      margin: const EdgeInsets.only(top: 5, right: 20, left: 20),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            padding: const EdgeInsets.only(top: 12, bottom: 12),
            child: Image.asset("assets/icons/search_icon.png"),
          ),
          suffixIcon: IconButton(
            icon: Icon(Icons.clear),
            onPressed: () {
              // Action ketika ikon diklik
              _controller.clear();
            },
          ),
          hintText: 'What are you looking for?',
          hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
