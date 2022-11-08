import 'dart:developer';
import 'dart:io';
import 'dart:math';

void main() {
  game();
  // helper();
  // userFunc();
  // compFunc();
}

void game() {
  stdout.write("How many rounds do you want?\tChoose from 1-10:\t");
  String answer = stdin.readLineSync()!;
  int roundCounter;
  int count = 1;

  switch (answer) {
    case "":
      print("You wrote nothing. so the game will be 3 rounds.");
      roundCounter = 3;
      round(roundCounter);
      break;

    case "1":
      roundCounter = int.parse(answer);
      round(roundCounter);
      break;

    case "2":
      roundCounter = int.parse(answer);
      round(roundCounter);
      break;

    case "3":
      roundCounter = int.parse(answer);
      round(roundCounter);
      break;

    case "4":
      roundCounter = int.parse(answer);
      round(roundCounter);
      break;

    case "5":
      roundCounter = int.parse(answer);
      round(roundCounter);
      break;

    case "6":
      roundCounter = int.parse(answer);
      round(roundCounter);
      break;

    case "7":
      roundCounter = int.parse(answer);
      round(roundCounter);
      break;

    case "8":
      roundCounter = int.parse(answer);
      round(roundCounter);
      break;

    case "9":
      roundCounter = int.parse(answer);
      round(roundCounter);
      break;

    case "10":
      roundCounter = int.parse(answer);
      round(roundCounter);
      break;

    default:
      print("uncorrect type of game. game will be 3 rounds.");
      roundCounter = 3;
      round(roundCounter);
      break;
  }
}

round(int roundCounter) {
  int count = 1;
  int compSteps = 0;
  int userSteps = 0;

  print("you have chosen $roundCounter rounds. break a leg!");

  while (count <= roundCounter) {
    print("=============================");
    print("round:  $count");
    // userFunc();
    print("user guesses a number");
    print("imagine a number from 1 till 100,be honest");
    String answer = "";
    int min = 0;
    int max = 100;
    int mid = (max + min) ~/ 2;
    int counter = 0;
    print(" greater or less $mid?");

    while (answer != "yes") {
      stdout.write("is it $mid ?");
      answer = stdin.readLineSync()!;
      if (answer == 'greater') {
        min = mid;
        mid = (max + min) ~/ 2;
        counter++;
      } else if (answer == "less") {
        max = mid;
        mid = (max + min) ~/ 2;
        counter++;
      } else if (answer == "yes") {
        print("the end of the game");
        counter++;
      } else {
        print("the $answer is not correct");
        answer;
      }
    }
    print("$mid is your number");
    print("got it on $counter steps");
    print("=============================");
    print("comp guesses a number");
    int ima = (1 + Random().nextInt(100 - 1));
    // print(ima);
    int counter1 = 1;
    print("write your example- it is between 1 and 100");
    int num = int.parse(stdin.readLineSync()!);

    while (num != ima) {
      if (ima > num) {
        print("greater");
        num = int.parse(stdin.readLineSync()!);
        counter1++;
      } else if (ima < num) {
        print("less");
        num = int.parse(stdin.readLineSync()!);
        counter1++;
      } else if (ima == num) {
        print("the end of the game");
        counter1++;
      } else {
        print("the $ima is not correct");
        num;
      }
    }
    print("$ima is my imagine number.");
    print("you got it $counter1");

    // compFunc();
    count++;

    if (counter < counter1) {
      print(" computer won in this round");
    } else if (counter > counter1) {
      print("user won in this round");
    } else {
      print("draw in this round");
    }

    compSteps += counter;
    userSteps += counter1;
  }
  print("=================================\nResult");
  print("$compSteps comp steps");
  print("$userSteps user steps");

  if (compSteps < userSteps) {
    print("computer won the game");
  } else if (compSteps > userSteps) {
    print("user won the game");
  } else {
    print("draw in the game");
  }
  print("Game over");
}

userFunc() {
  print("user guesses a number");
  print("imagine a number from 1 till 100,be honest");
  String answer = "";
  int min = 0;
  int max = 100;
  int mid = (max + min) ~/ 2;
  int counter = 0;
  print(" greater or less $mid?");

  while (answer != "yes") {
    stdout.write("is it $mid ?");
    answer = stdin.readLineSync()!;
    if (answer == 'greater') {
      min = mid;
      mid = (max + min) ~/ 2;
      counter++;
    } else if (answer == "less") {
      max = mid;
      mid = (max + min) ~/ 2;
      counter++;
    } else if (answer == "yes") {
      print("the end of the game");
      counter++;
    } else {
      print("the $answer is not correct");
      answer = stdin.readLineSync()!;
    }
  }
  print("got it on $counter steps");
  print("$mid is your number");
  // return counter;
}

compFunc() {
  print("comp guesses a number");
  int ima = (1 + Random().nextInt(100 - 1));
  // print(ima);
  print("write your example- it is between 1 and 100");
  int num = int.parse(stdin.readLineSync()!);
  int counter = 1;
  String im = "";

  while (num != ima) {
    if (ima > num) {
      print("greater");
      num = int.parse(stdin.readLineSync()!);
      counter++;
    } else if (ima < num) {
      print("less");
      counter++;
      num = int.parse(stdin.readLineSync()!);
    } else if (ima == num) {
      print("the end of the game");
      counter++;
    } else {
      print("the $num is not correct");
      num;
    }
  }
  print("$ima is my imagine number.");
  print("you got it $counter");
}

helper(int a) {
  String start = stdin.readLineSync()!;
  if (start == "you") {
    print("imagine a number from 1 till 100,be honest");
    String answer = "";
    int min = 0;
    int max = 100;
    int mid = (max + min) ~/ 2;
    int counter = 0;
    print(" greater or less $mid?");

    while (answer != "yes") {
      stdout.write("is it $mid ?");
      answer = stdin.readLineSync()!;
      if (answer == 'greater') {
        min = mid;
        mid = (max + min) ~/ 2;
        counter++;
      } else if (answer == "less") {
        max = mid;
        mid = (max + min) ~/ 2;
        counter++;
      } else if (answer == "yes") {
        print("the end of the game");
        counter++;
      } else {
        print("the $answer is not correct");
        answer = stdin.readLineSync()!;
      }
    }
    print("got it on $counter steps");
    print("$mid is your number");
  } else if (start == "computer") {
    int ima = (1 + Random().nextInt(100 - 1));
    // print(ima);
    print("write your example- it is between 1 and 100");
    int num = int.parse(stdin.readLineSync()!);
    int counter = 1;
    while (num != ima) {
      if (ima > num) {
        print("greater");
        num = int.parse(stdin.readLineSync()!);
        counter++;
      } else if (ima < num) {
        print("less");
        counter++;
        num = int.parse(stdin.readLineSync()!);
      } else if (ima == num) {
        print("the end of the game");
        counter++;
      } else {
        print("the $ima is not correct");
      }
    }
    print("$ima is my imagine number.");
    print("you got it $counter");
  } else {
    print("Choose correct one!");
    start = stdin.readLineSync()!;
  }
  print("Game over.");
}
