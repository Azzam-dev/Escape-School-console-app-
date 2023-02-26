// تتيح لنا استخدام مجموعة اوامر لاستقبال المدخلات من المستخدم
import 'dart:io';

//نقطة بداية المشروع
main() {
  gameTitle();
  levelOneTitle();
}

// تستخدم لإضافة مسافات
makeSpace(int spaces) {
  for (int index = 0; index < spaces; index++) {
    print(" ");
  }
}

// تستخدم لإظهار عنوان اللعبة
gameTitle() {
  makeSpace(2);
  print("###### Escape School ######");
  makeSpace(2);
}

// تستخدم لإظهار محتوى رسالة المرحلة الاولى
levelOneTitle() {
  print("level 1");
  printToday();
  print("You are sitting on your desk,");
  print("and the teacher left the class,");
  print("with on of your class mates.");
  levelOne();
}

// تستخدم لبدأ المرحلة الاولى
levelOne() {
  print("do your want to 1#(escape), 2#(fight), 3#(cheet):");
  String option1 = stdin.readLineSync()!;
  switch (option1) {
    case "escape":
    case "1":
      win();
      levelTwoTitle();
      break;
    case "fight":
    case "2":
      lose();
      break;
    case "cheet":
    case "3":
      lose();
      break;
    case "q":
    case "Q":
      quitGame();
      break;
    default:
      makeSpace(2);
      levelOne();
      break;
  }

  makeSpace(2);
}

// تستخدم لإظهار محتوى رسالة المرحلة الثانية
levelTwoTitle() {
  print("level 2");
  print(".............");
  print(".............");
  print(".............");
  levelTwo();
}

// تستخدم لبدأ المرحلة الثانية
levelTwo() {
  print("........? 1#(a) 2#(b) 3#(c):");
  String option1 = stdin.readLineSync()!;
  makeSpace(2);
  switch (option1) {
    case "a":
    case "1":
      lose();
      break;
    case "b":
    case "2":
      win();
      levelThreeTitle();
      break;
    case "c":
    case "3":
      lose();
      break;
    case "q":
    case "Q":
      quitGame();
      break;
    default:
      makeSpace(2);
      levelTwo();
      break;
  }
}

levelThreeTitle() {
  print("level 3");
  print(".............");
  print(".............");
  print(".............");
  levelThree();
}

// تستخدم لبدأ المرحلة الثالية و الاخيرة
levelThree() {
  print("........? 1#(a) 2#(b) 3#(c):");
  String option1 = stdin.readLineSync()!;
  makeSpace(2);
  switch (option1) {
    case "a":
    case "1":
      lose();
      break;
    case "b":
    case "2":
      win();
      endGame();
      break;
    case "c":
    case "3":
      lose();
      break;
    case "q":
    case "Q":
      quitGame();
      break;
    default:
      makeSpace(2);
      levelThree();
      break;
  }
}

// تستخدم لإظهار رسالة انتهاء اللعبة
endGame() {
  makeSpace(2);
  print("######### The End #########");
  makeSpace(2);
}

// تستخدم لإظهار تاريخ اليوم
printToday() {
  print(
      "${DateTime.now().day} / ${DateTime.now().month} / ${DateTime.now().year}");
}

//  تستخدم لإظهار رسالة الفوز بالمرحلة
win() {
  makeSpace(1);
  print("🎉🎉🎉🎉🎉🎉🎉🎉");
  makeSpace(1);
}

// تستخدم لإظهار رسالة الفشل و انهاء اللعبة
lose() {
  makeSpace(1);
  print("🏴‍☠️🏴‍☠️🏴‍☠️🏴‍☠️🏴‍☠️🏴‍☠️🏴‍☠️");
  makeSpace(1);
  levelOneTitle();
}

// تستخدم لإنهاء اللعبة
quitGame() {
  endGame();
  exit(0);
}
