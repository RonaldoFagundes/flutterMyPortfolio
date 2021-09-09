import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void openWhatsApp({@required number, @required msg}) async {
  String url = "https://web.whatsapp.com://send?phone=$number&text=$msg";
  await canLaunch(url) ? await launch(url) : throw 'erro $url';
}

/* const _whatsapp = "whatsapp://send?phone=+5521990288543&text=Olá,tudo bem ?";
void _openWhatsApp() async => await canLaunch(_whatsapp)
    ? await launch(_whatsapp)
    : throw 'erro $_whatsapp'; */

const _gitHub = 'https://github.com/RonaldoFagundes';

void openGitHub() async =>
    await canLaunch(_gitHub) ? await launch(_gitHub) : throw 'erro $_gitHub';

const _linkedin = 'https://www.linkedin.com/in/ronaldofagundes';
void openLinkedin() async => await canLaunch(_linkedin)
    ? await launch(_linkedin)
    : throw 'erro $_linkedin';

const _webConvector = 'https://ronaldofagundes.github.io/webConvector/';
void openWebConvector() async => await canLaunch(_webConvector)
    ? await launch(_webConvector)
    : throw 'erro $_webConvector';

const _webTur = 'https://ronaldofagundes.github.io/webTur/';
void openWebTur() async =>
    await canLaunch(_webTur) ? await launch(_webTur) : throw 'erro $_webTur';

const _webNutri = 'https://ronaldofagundes.github.io/webNutri/';
void openWebNutri() async => await canLaunch(_webNutri)
    ? await launch(_webNutri)
    : throw 'erro $_webNutri';
