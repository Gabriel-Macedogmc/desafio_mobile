import 'package:desafio_mobile/utils/size_config.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Colors.green;
const kPrimaryLightColor = Color(0xFFFFECDF);
const kCardColor = Color(0xFFDFDFDF);
const kPrimaryGrandientColor = LinearGradient(
  begin: Alignment.topLeft,
  colors: [
    Color(0xFF019EE5),
    Color(0xFF00B1EC),
    Color(0xFF00C3EE),
    Color(0xFF00E5E5)
  ],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

const String kTextolNullError = "Por favor entre com seu Texto!";
const String kTextoSmallError = "Ao menos 20 caracteres";
final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
    gapPadding: 10,
  );
}
