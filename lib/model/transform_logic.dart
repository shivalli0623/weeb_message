import 'dart:math';

import 'weeb_data.dart';

String messageTransform(String input) {
  String message = input;
  var snippet = message.split('\n');

  var randomGenerator = Random(DateTime.now().millisecond);

  message = '';
  for (String line in snippet) {
    var haveWww = randomInt(0.3);
    var wwwNumber =
        (jsMathFloor(randomGenerator.nextDouble() * 4) + 2) * haveWww;
    String www = '';
    for (var i = 0; i < wwwNumber; i++) {
      www += 'w';
    }

    var havePostfix = randomInt(0.5);
    var postfixIndex =
        jsMathFloor(randomGenerator.nextDouble() * postfixes.length.toDouble());
    String postfix = havePostfix == 1 ? postfixes[postfixIndex] : '';
    if (postfix.isNotEmpty) {
      postfix = '(' + postfix;
    }

    var havePrefix = randomInt(0.5);
    var prefixIndex =
        jsMathFloor(randomGenerator.nextDouble() * prefixes.length.toDouble());
    String prefix = havePrefix == 1 ? prefixes[prefixIndex] : '';

    message += '$prefix $line $www $postfix \n';
  }
  return message;
}

int randomInt(var p) {
  return (Random().nextDouble() < p) ? 1 : 0;
}

int jsMathFloor(double number) {
  return number.floor();
}
