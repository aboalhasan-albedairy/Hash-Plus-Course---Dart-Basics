// welcome to Hash Plus - Dart Edition

import 'dart:io';

void main() {
  // data storgae
  const String userName = "Hash-Plus-Hopper";
  const String passWord = "IHash#-Plus+6432";
  // inputs
  String? inputUserName;
  String? inputPassWord;
  int? inputChoosingRoadmap;

  // welcome messege
  print("Hash Plus - Dart Edition");
  print("\n=======================\n");
  print("<<<< Login >>>>");
  stdout.write("Enter Username: ");
  inputUserName = stdin.readLineSync();
  stdout.write("Enter Password: ");
  inputPassWord = stdin.readLineSync();
  print("===================================================================");

  // login condition
  if (inputUserName == userName && inputPassWord == passWord) {
    // choosing Roadmap
    print("<<<<< Welcome to HashPlus Dart Edition >>>>\n");
    print("""the Roadmaps that avaliable
1 - Web Development
2 - Mobile Application Development
3 - UI UX Design
4 - AI Tools
5 - Cyper securty
6 - Networking
7 - Data Analysis""");
    print("==================================================================");
    stdout.write("please choose your Roadmap: ");
    inputChoosingRoadmap = int.parse(stdin.readLineSync()!);

    print("==================================================================");
    switch (inputChoosingRoadmap) {
      case 1:
        print("Welcome to Web Development Roadmap");
        break;
      case 2:
        print("Welcome to Mobile Application Development Roadmap");
        break;
      case 3:
        print("Welcome to UI UX Design Roadmap");
        break;
      case 4:
        print("Welcome to AI Tools Roadmap");
        break;
      case 5:
        print("Welcome to Cyper Securty Roadmap");
        break;
      case 6:
        print("Welcome to Networking Roadmap");
        break;
      case 7:
        print("Welcome to Data Analysis Roadmap");
        break;
      default:
        print("Error: Invailed Value");
    }
  } else {
    print("Login Failed!");
  }
}
