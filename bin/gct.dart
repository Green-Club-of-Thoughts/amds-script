import 'dart:io';
import 'package:pdf/widgets.dart';

import 'mailer.dart';
import 'pdf.dart';

void main(List<String> arguments) async {
  var sender = Mailer();

  var data = File('data.csv').readAsLinesSync();
  for (var row in data) {
    var bill = row.split(',');
    generatePDF(
      name: '${bill[1]} ${bill[2]}',
      amount: bill[6],
      country: bill[4],
      position: bill[5],
    );

    await sender.sendReceipt(bill[3], bill[1]);
    print('Sent To ${bill[3]}');
  }
}
