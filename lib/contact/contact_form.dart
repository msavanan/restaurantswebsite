import 'package:flutter/material.dart';
import 'package:restaurantswebsite/login/email_validator.dart';

import 'contact_text_field.dart';

class ContactForm extends StatefulWidget {
  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  String _email;
  String _userName;
  String _subject;
  String _message;

  final _contactFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _contactFormKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Container(
        width: 500,
        margin:
            EdgeInsets.only(left: 30, right: 30, bottom: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8),
            ContactTextField(
              hintTxt: 'Name',
              labelTxt: 'Name',
              validator: (userName) =>
                  userName.isEmpty ? '*Required' : null,
              onSaved: (userName) => _userName = userName,
            ),
            SizedBox(height: 8),
            ContactTextField(
              hintTxt: 'E-mail',
              labelTxt: 'E-mail',
              validator: emailValidator,
              onSaved: (email) => _email = email,
            ),
            SizedBox(height: 8),
            ContactTextField(
              hintTxt: 'Subject',
              labelTxt: 'Subject',
              validator: (subject) =>
                  subject.isEmpty ? '*Required' : null,
              onSaved: (subject) => _subject = subject,
            ),
            SizedBox(height: 8),
            TextFormField(
              onSaved: (message) => _message = message,
              validator: (message) =>
                  message.isEmpty ? '*Required' : null,
              autocorrect: false,
              style: TextStyle(color: Colors.black),
              minLines: 3,
              maxLines: null,
              decoration: InputDecoration(
                labelText: 'Message',
                hintText: 'Your message',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8),
            MaterialButton(
              onPressed: () {
                if (_contactFormKey.currentState
                    .validate()) {}
              },
              child: Text("Submit"),
              color: Colors.green,
              padding: EdgeInsets.all(5),
            )
          ],
        ),
      ),
    );
  }
}
