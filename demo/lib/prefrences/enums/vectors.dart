import 'package:flutter/material.dart';

enum Vectors {
  vectorOne,
  vectorOneBackground,
  vectorTwo,
  vectorTwoBackground,
  vectorThree,
  vectorThreeBackground,
  vectorFour,
  vectorFourBackground,
  vectorFive,
  vectorFiveBackground,
  mainVector
}

extension ext on Vectors {
  AssetImage get asset {
    switch (this) {
      case Vectors.mainVector:
        return AssetImage("main_page_vector.png");
      case Vectors.vectorOne:
        return AssetImage("vector_one.png");
      case Vectors.vectorOneBackground:
        return AssetImage("vector_one_background.png");
      case Vectors.vectorTwo:
        return AssetImage("vector_two.png");
      case Vectors.vectorTwoBackground:
        return AssetImage("vector_two_background.png");
      case Vectors.vectorThree:
        return AssetImage("vector_three.png");
      case Vectors.vectorThreeBackground:
        return AssetImage("vector_three_background.png");
      case Vectors.vectorFour:
        return AssetImage("vector_four.png");
      case Vectors.vectorFourBackground:
        return AssetImage("vector_four_background.png");
      case Vectors.vectorFive:
        return AssetImage("vector_five.png");
      case Vectors.vectorFiveBackground:
        return AssetImage("vector_five_background.png");
    }
  }
}
