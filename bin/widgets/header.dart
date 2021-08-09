import 'dart:io';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

Widget getHeader() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Column(children: [
        Row(
          children: [
            Image(
              MemoryImage(File('assets/gct.png').readAsBytesSync()),
              height: 90,
              width: 90,
            ),
            SizedBox(
              width: 10,
            ),
            Image(
              MemoryImage(File('assets/ku.png').readAsBytesSync()),
              height: 80,
              width: 80,
            ),
          ],
        ),
        Text('www.gctatku.org.np'),
      ]),
      SizedBox(
        width: 10,
      ),
      Expanded(
        child: Divider(
          thickness: 1,
          color: PdfColor.fromHex('#dbdbdb'),
        ),
      ),
    ],
  );
}
