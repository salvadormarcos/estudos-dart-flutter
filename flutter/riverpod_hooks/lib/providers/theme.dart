import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final colorSwatchProvider = StateNotifierProvider<ColorState, Color>((ref) => ColorState());

class ColorState extends StateNotifier<Color> {

  ColorState(): super(Colors.blue);

}
