import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

Graphics mainGraphics = Graphics();

class Graphics {
  //Todo: Fix Color issue
  final Widget mainLogo = SvgPicture.asset(
    'assets/main_logo.svg',
    color: Colors.cyan.shade900,
  );
  final Widget lottieCrypto = Lottie.asset('assets/lottie_crypto_charts');
}
