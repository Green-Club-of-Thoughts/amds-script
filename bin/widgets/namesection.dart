import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

Widget getNameSection(String name, String position, String country) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Expanded(
        child: Container(
          height: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'BILL FROM',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text('$name'),
              Text('$position'),
              Text('$country'),
            ],
          ),
        ),
      ),
      SizedBox(width: 20),
      Expanded(
        child: Container(
          height: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'BILL TO',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text('Green Club of Thoughts'),
              Text('Kathmandu University'),
              Text('Nepal'),
            ],
          ),
        ),
      ),
      SizedBox(width: 20.0),
      Expanded(
        child: Container(
          height: 200,
          color: PdfColor.fromHex('#1988bf'),
          padding: EdgeInsets.only(right: 10.0),
          child: Column(
            children: [
              SizedBox(height: 10.0),
              Text(
                'Advanced Molecular Dynamics SIMULATION: A Summer School'
                    .toUpperCase(),
                style: TextStyle(
                    fontSize: 15.0, color: PdfColor.fromHex('#ffffff')),
                textAlign: TextAlign.right,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Date: July 01, 2021',
                style: TextStyle(
                  color: PdfColor.fromHex('#ffffff'),
                ),
              ),
            ],
          ),
        ),
      )
    ],
  );
}
