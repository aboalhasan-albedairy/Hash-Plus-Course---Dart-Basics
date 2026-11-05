// Task 1 - Ticket Booking System
import 'dart:io';

void main() {
  // variables
  String ticketType;
  int ticketPrice;
  int quantity;
  int totalPrice;
  String gift;
  // inputs variables
  String? inputName;
  int? inputAge;
  int? inputChooseTicketType;
  int? inputQuantity;

  // login
  print("<<<< Login to Ticket Booking >>>>");
  // enter name
  stdout.write("Enter Your Name: ");
  inputName = stdin.readLineSync();
  // enter age
  stdout.write("Enter Your Age: ");
  inputAge = int.parse(stdin.readLineSync()!);
  print("=========================================");

  // login age check
  if (inputAge < 15) {
    print("Sorry, this movie is for ages 15 and above.");
  } else {
    // Ticket Booking system
    print("Welcome to Cinema Ticket Booking");

    // Choose ticket
    print("""please Choose your Ticket's Type:
1 - Standard
2 - VIP
3 - IMAX
""");
    // enter your ticket type
    stdout.write("Choose Ticket Type: ");
    inputChooseTicketType = int.parse(stdin.readLineSync()!);

    // conditions
    switch (inputChooseTicketType) {
      case 1:
        ticketType = "Standard";
        ticketPrice = 40;
        break;
      case 2:
        ticketType = "VIP";
        ticketPrice = 75;
        break;
      case 3:
        ticketType = "IMAX";
        ticketPrice = 60;
        break;
      default:
        print("Invalid Ticket Type!");
        return;
    }

    // enter quantity
    stdout.write("Enter Ticket Quantity: ");
    inputQuantity = int.parse(stdin.readLineSync()!);
    quantity = inputQuantity;

    // total price
    totalPrice = ticketPrice * quantity;

    // gift
    gift = (totalPrice >= 200) ? "Free Popcorn" : "No Free Popcorn";

    // output
    print("""
========== Cinema Ticket ==========
Name: $inputName
Ticket Type: $ticketType
Quantity: $quantity
Total Price: $totalPrice
Gift: $gift
===================================
""");
  }
}
