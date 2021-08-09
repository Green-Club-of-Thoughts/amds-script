import 'dart:io';

import 'package:pdf/widgets.dart';

Widget getFooter() {
  return Row(
    children: [
      Column(
        children: [
          Image(
            MemoryImage(
              File('assets/sign.png').readAsBytesSync(),
            ),
            width: 100,
          ),
          Text('Shraddha Kadel'),
          Text('Treasurer'),
        ],
      ),
      Image(
        MemoryImage(
          File('assets/stamp.png').readAsBytesSync(),
        ),
        width: 150,
      ),
    ],
  );
}
