import 'dart:io';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'widgets/footer.dart';
import 'widgets/header.dart';
import 'widgets/namesection.dart';
import 'widgets/table.dart';

void generatePDF(
    {String? name, String? amount, String? country, String? position}) async {
  final pdf = Document();

  pdf.addPage(
    Page(
      pageFormat: PdfPageFormat.a4,
      margin: EdgeInsets.all(40),
      build: (Context context) {
        return Column(
          children: [
            getHeader(),
            SizedBox(
              height: 20.0,
            ),
            getNameSection(name!, position!, country!),
            SizedBox(
              height: 20.0,
            ),
            getTable('INR $amount'),
            SizedBox(
              height: 20.0,
            ),
            getFooter(),
          ],
        ); // Center
      },
    ),
  ); // Page

  final file = File('bill.pdf');
  await file.writeAsBytes(await pdf.save());
}
