import 'dart:io';

import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class Mailer {
  SmtpServer smtpServer = SmtpServer('',
      name: 'AMDS 2021',
      username: '',
      //TODO: Your Password Here
      password: '');

  Future<void> sendReceipt(String email, String firstName) async {
    try {
      final path = 'bill.pdf';

      final equivalentMessage = Message()
        ..from = Address('amds2021@gctatku.org.np', 'AMDS 2021')
        ..recipients.add(Address('$email'))
        ..subject = 'AMDS 2021 Payment Receipt'
        ..text =
            'Dear $firstName,\n\nAttached is the payment receipt of AMDS 2021. For any query please contact ashim.joshi@hotmail.com.'
        ..attachments = [
          FileAttachment(File(path))
            ..fileName = 'bill.pdf'
            ..location = Location.inline
            ..cid = '<myimg@3.141>'
        ];

      await send(equivalentMessage, smtpServer);
    } catch (e) {
      print('Note sent to: $email');
    }
  }
}
