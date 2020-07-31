import 'package:flutter/material.dart';

class ResetPasswordPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black38,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset('assets/reset-password-icon.png'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Esqueceu sua senha?',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w400
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Por favor, informe o E-mail associado a sua conta que enviaremos um link para o mesmo com as informações para restauração de sua senha.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'E-mail',
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20
                )
              ),
              style: TextStyle(fontSize: 20)
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [ 0.3, 1 ],
                  colors: [
                    Color(0xFFF58524),
                    Color(0xFFF92B7F)
                  ]
                ),
                borderRadius: BorderRadius.all( Radius.circular(5) ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Text(
                    'Enviar',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {},
                )
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        )
      )
    );
  }

}
