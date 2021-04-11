import 'package:desafio_mobile/components/default_button.dart';
import 'package:desafio_mobile/models/post_models.dart';
import 'package:desafio_mobile/controllers/app.controller.dart';
import 'package:desafio_mobile/utils/app_routes.dart';
import 'package:desafio_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'form_error.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();
  final _controller = AppController();

  var posts = new Posts();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    buildTextoFormField(),
                    SizedBox(height: 10),
                    Observer(
                      builder: (_) => FormError(errors: _controller.errors),
                    ),
                    SizedBox(height: 10),
                    DefaultButton(
                      text: "POSTAR",
                      press: () {
                        if (_formKey.currentState.validate()) {
                          _formKey.currentState.save();

                          _controller.createPost(posts.texto);

                          Navigator.pop(context, AppRoutes.HOME);
                        }
                      },
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  TextFormField buildTextoFormField() {
    return TextFormField(
      scrollPadding: const EdgeInsets.all(10),
      keyboardType: TextInputType.multiline,
      autofocus: false,
      maxLines: 2,
      onSaved: (newValue) {
        posts.texto = newValue;
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          _controller.addError(error: kTextolNullError);
        } else if (value.length > 20) {
          _controller.removeError(error: kTextoSmallError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          _controller.addError(error: kTextolNullError);
          return "";
        } else if (value.length < 20) {
          _controller.addError(error: kTextoSmallError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Texto",
        hintText: "Faça seu post",
        fillColor: kTextColor,
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
