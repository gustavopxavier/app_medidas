import 'package:app_medidas/widgets/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(
    ContactScreen(),
  );
}

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorScheme.primary,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Contatos:',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: contactCall(),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: contactZap(),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: contactInsta(),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: contactFace(),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: contactSite(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  contactZap() {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        primary: colorScheme.primaryVariant,
        padding: EdgeInsets.symmetric(vertical: 20),
        onPrimary: Colors.black,
        onSurface: Colors.white,
        elevation: 100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      onPressed: _launchZAP,
      label: Text('Whatsapp'),
      icon: Icon(Icons.whatshot),
    );
  }

  contactCall() {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        primary: colorScheme.primaryVariant,
        padding: EdgeInsets.symmetric(vertical: 20),
        onPrimary: Colors.black,
        onSurface: Colors.white,
        elevation: 100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      onPressed: _launchCalling,
      label: Text('Ligação'),
      icon: Icon(Icons.phone),
    );
  }

  contactInsta() {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        primary: colorScheme.primaryVariant,
        padding: EdgeInsets.symmetric(vertical: 20),
        onPrimary: Colors.black,
        onSurface: Colors.white,
        elevation: 100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      onPressed: _launchINSTA,
      label: Text('Instagram'),
      icon: Icon(Icons.insert_chart),
    );
  }

  contactFace() {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        primary: colorScheme.primaryVariant,
        padding: EdgeInsets.symmetric(vertical: 20),
        onPrimary: Colors.black,
        onSurface: Colors.white,
        elevation: 100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      onPressed: _launchFACE,
      label: Text('Facebook'),
      icon: Icon(Icons.insert_chart),
    );
  }

  contactSite() {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        primary: colorScheme.primaryVariant,
        padding: EdgeInsets.symmetric(vertical: 20),
        onPrimary: Colors.black,
        onSurface: Colors.white,
        elevation: 100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      onPressed: _launchSITE,
      label: Text('Site'),
      icon: Icon(Icons.web),
    );
  }

  _launchZAP() async {
    const url = 'https://api.whatsapp.com/send?1=pt_BR&phone=5584994470336';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Não foi possível abrir $url';
    }
  }

  _launchSITE() async {
    const url = 'https://www.olhovivotecnologia.com.br';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Não foi possível abrir $url';
    }
  }

  _launchFACE() async {
    const url = 'https://facebook.com/olhovivotecnologia';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Não foi possível abrir $url';
    }
  }

  _launchCalling() async {
    const url = 'tel:+5584994470336';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Não foi possível abrir $url';
    }
  }

  _launchINSTA() async {
    const url = 'https://instagram.com/olhovivotecnologia';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Não foi possível abrir $url';
    }
  }
}
