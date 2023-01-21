import 'package:flutter/material.dart';
import 'package:tugasakhir/controller/preferences/hexcolor_convert.dart';
import 'package:tugasakhir/models/requirement_model.dart';

class RequirementsSection extends StatelessWidget {
  const RequirementsSection({
    Key? key,
    required HexColor black,
  })  : _black = black,
        super(key: key);

  final HexColor _black;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: requirements.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(top: 8, left: 20, right: 20),
          child: Row(
            children: [
              Container(
                width: 4,
                height: 4,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _black,
                ),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 20,
                  minHeight: 20,
                  maxWidth: 315,
                  maxHeight: 150,
                ),
                child: Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: Text(requirements[index].text!,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: _black,
                      )),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
