import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

List<String> fillSourceArray() {
  return [
    'assets/animalspics/cat_1.png',
    'assets/animalspics/cat_1.png',
    'assets/animalspics/cat_3.png',
    'assets/animalspics/cat_3.png',
    'assets/animalspics/cat_5.png',
    'assets/animalspics/cat_5.png',
    'assets/animalspics/cat_9.png',
    'assets/animalspics/cat_9.png',
    'assets/animalspics/cat_11.png',
    'assets/animalspics/cat_11.png',
    'assets/animalspics/cat_13.png',
    'assets/animalspics/cat_13.png',
    
  ];
}
enum Level { Hard, Medium, Easy }


List getSourceArray(
  Level level,
) {
  List<String> levellist = new List<String>();
  List sourceArray = fillSourceArray();
  if (level == Level.Hard) {
    sourceArray.forEach((element) {
      levellist.add(element);
    });
  } else if (level == Level.Medium) {
    for (int i = 0; i < 6; i++) {
      levellist.add(sourceArray[i]);
    }
  } else if (level == Level.Easy) {
    for (int i = 0; i < 4; i++) {
      levellist.add(sourceArray[i]);
    }
  }

  levellist.shuffle();
  return levellist;
}


List<bool> getInitialItemState(Level level) {
  List<bool> initialItemState = new List<bool>();
  if (level == Level.Hard) {
    for (int i = 0; i < 12; i++) {
      initialItemState.add(true);
    }
  } else if (level == Level.Medium) {
    for (int i = 0; i < 6; i++) {
      initialItemState.add(true);
    }
  } else if (level == Level.Easy) {
    for (int i = 0; i < 4; i++) {
      initialItemState.add(true);
    }
  }
  return initialItemState;
}

List<GlobalKey<FlipCardState>> getCardStateKeys(Level level) {
  List<GlobalKey<FlipCardState>> cardStateKeys =
     new List<GlobalKey<FlipCardState>>();
  if (level == Level.Hard) {
    for (int i = 0; i < 12; i++) {
      cardStateKeys.add(GlobalKey<FlipCardState>());
    }
  } else if (level == Level.Medium) {
    for (int i = 0; i < 6; i++) {
      cardStateKeys.add(GlobalKey<FlipCardState>());
    }
  } else if (level == Level.Easy) {
    for (int i = 0; i < 4; i++) {
      cardStateKeys.add(GlobalKey<FlipCardState>());
    }
  }
  return cardStateKeys;
}
