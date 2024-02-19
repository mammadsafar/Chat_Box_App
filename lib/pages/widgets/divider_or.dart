import 'package:flutter/material.dart';

class DividerOrWidget extends StatelessWidget {
  const DividerOrWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Divider(
              color: const Color(0xFFCDD1D0).withOpacity(0.5),
              height: 50,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "OR",
              style: TextStyle(
                color: Color(0xFF797C7B),
                fontFamily: 'circularStd',
                fontWeight: FontWeight.w100,
                fontSize: 20,
              ),
            ),
          ),
          Expanded(
            child: Divider(
              color: const Color(0xFFCDD1D0).withOpacity(0.5),
              height: 50,
            ),
          ),
        ],
      ),
    );
  }
}
