import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

Widget getTable(String amount) {
  return Table(
    border: TableBorder.all(
      color: PdfColor.fromHex('#1988bf'),
      width: 1.0,
    ),
    children: [
      TableRow(
        decoration: BoxDecoration(
          border: TableBorder.all(
            color: PdfColor.fromHex('#1988bf'),
            width: 2.0,
          ),
          color: PdfColor.fromHex('#1988bf'),
        ),
        children: [
          Text(
            '  ID',
            style: TextStyle(
              color: PdfColor.fromHex('#ffffff'),
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '  DESCRIPTION',
            style: TextStyle(
              color: PdfColor.fromHex('#ffffff'),
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '  AMOUNT',
            style: TextStyle(
              color: PdfColor.fromHex('#ffffff'),
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '  TOTAL',
            style: TextStyle(
              color: PdfColor.fromHex('#ffffff'),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      TableRow(
        children: [
          Text(
            ' 01',
          ),
          Text(
            ' Fee for the school',
          ),
          Text(
            ' $amount',
          ),
          Text(
            ' $amount',
          ),
        ],
      ),
      TableRow(
        children: [
          SizedBox(
            height: 15.0,
          ),
          Text(
            ' ',
          ),
          Text(
            ' ',
          ),
          Text(
            ' ',
          ),
        ],
      ),
      TableRow(
        children: [
          Text(
            '',
          ),
          Text(
            '',
          ),
          Text(
            ' Total',
          ),
          Text(
            ' $amount',
          ),
        ],
      ),
    ],
  );
}
