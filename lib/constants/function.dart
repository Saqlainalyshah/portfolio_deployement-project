import 'package:url_launcher/url_launcher.dart';

class Functions{
  static Future _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url),mode: LaunchMode.externalApplication)) {
    }else{
      throw Exception('Could not launch $url');

    }
  }
}