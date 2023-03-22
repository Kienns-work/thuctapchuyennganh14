import 'package:bookinghotel/core/helpers/asset_helper.dart';
import 'package:bookinghotel/core/helpers/image_helper.dart';
import 'package:bookinghotel/representation/screens/intro_screen.dart';
import 'package:flutter/material.dart';

List dataIntro = [
  {
    'image': ImageHelper.loadFromAsset(AssetHelper.imageIntro1),
    'title': 'Day la tieu de 1',
    'description':
        'This texting dictionary explains the text abbreviations and acronyms dialect used by most children and young people to communicate with their',
    'shape': MyCustomClipper1(),
  },
  {
    'image': ImageHelper.loadFromAsset(AssetHelper.imageIntro2),
    'title': 'Day la tieu de 2',
    'description':
        'This texting dictionary explains the text abbreviations and acronyms ',
    'shape': MyCustomClipper2(),
  },
  {
    'image': ImageHelper.loadFromAsset(AssetHelper.imageIntro3),
    'title': 'Day la tieu de 3',
    'description':
        'This texting dictionary explains the text abbreviations and acronyms dialect used by most children and young people to communicate with their friends on social media and through text messaging.',
    'shape': MyCustomClipper3(),
  },
];
