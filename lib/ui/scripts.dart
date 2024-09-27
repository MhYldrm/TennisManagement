class Scripts {

  static String getDays (int indeks){
    String res = "";
    switch(indeks){
      case 0:
        return res = "Monday";
        break;
      case 1:
        return res = "Tuesday";
        break;
      case 2:
        return res = "Wednesday";
        break;
      case 3:
        return res = "Thursday";
        break;
      case 4:
        return res = "Friday";
        break;
      case 5:
        return res = "Saturday";
        break;
      case 6:
        return res = "Sunday";
        break;
    }
    return res;
  }

  static String description ="The calendar on this page displays available hours on the court in green. To make a reservation:\n1- Determine the time you would like to request a reservation for.\n2- Click on the button in the bottom right corner of the page.\n3- Select your day and time in the form. You can also add a date in the notes section.\n4- Click the 'Submit Reservation' button.";

  static String clupPhoneNumber = "+905525059923";

}