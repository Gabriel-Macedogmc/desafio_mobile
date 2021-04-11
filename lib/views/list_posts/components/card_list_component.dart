import 'package:desafio_mobile/utils/constants.dart';
import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  const CardList({
    Key key,
    @required this.autorNome,
    @required this.data,
    @required this.texto,
  }) : super(key: key);

  final String autorNome;
  final String data;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kCardColor,
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  autorNome,
                  style: TextStyle(
                    fontFamily: 'Muli',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'data: $data',
                  style: TextStyle(
                    fontFamily: 'Muli',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                texto,
                style: TextStyle(
                  fontFamily: 'Muli',
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
