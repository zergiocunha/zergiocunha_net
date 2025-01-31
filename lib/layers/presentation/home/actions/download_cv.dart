import 'package:flutter/services.dart';
import 'package:universal_html/html.dart' as html;

void downloadPdfWeb() async {
  final ByteData bytes = await rootBundle.load('assets/cv/Profile.pdf');
  final Uint8List list = bytes.buffer.asUint8List();
  final blob = html.Blob([list], 'application/pdf');
  final url = html.Url.createObjectUrlFromBlob(blob);
  html.AnchorElement(href: url)
    ..setAttribute('download', 'Profile.pdf')
    ..click();
  html.Url.revokeObjectUrl(url);
}
