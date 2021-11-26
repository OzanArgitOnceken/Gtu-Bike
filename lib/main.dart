import 'dart:html';

class userData {
  String _name;

  String _surname;
  String _studentNumber;
  String _tcNumber;
  String _password;
  bool haveBike;
  bool lateSubmit;
  int bikeNumber;
  int _remainedDays=5;

  userData(this._name, this._surname, this._studentNumber, this._tcNumber,
      this._password,
      {this.haveBike = false, this.lateSubmit = false, this.bikeNumber = -1});


  void changePassword(String newPassword) => _password = newPassword;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get surname => _surname;

  set surname(String value) {
    _surname = value;
  }

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  String get studentNumber => _studentNumber;

  set studentNumber(String value) {
    _studentNumber = value;
  }

  String get tcNumber => _tcNumber;

  set tcNumber(String value) {
    _tcNumber = value;
  }

  int get remainedDays => _remainedDays;

  set remainedDays(int value) {
    _remainedDays = value;
  }

  @override
  String toString() {
    return "Name:" +
        _name +
        "\n Surname:" +
        _surname +
        "\n Student number:" +
        _studentNumber +
        "\nTc number" +
        _tcNumber +
        "\nPassword" +
        _password +
        "\nHave bike?" +
        haveBike.toString() +
        "\nLate delivered?" +
        lateSubmit.toString()+
        "Bike number: " +
        bikeNumber.toString();
  }

  bool giveBike(int givenBikeNumber){
    if(this.bikeNumber==-1){
      this.haveBike=true;
      this.bikeNumber=givenBikeNumber;
      return true;
    }
    return false;
  }
  void oneDayAfter(){
    this.remainedDays--;
    if(this.remainedDays<0)
      lateSubmit=true;
  }
  bool deliverBike(int takenBikeFromUser){
    if(takenBikeFromUser!=this.bikeNumber)//bike numbers should match
      return false;
    this.bikeNumber=-1;
    haveBike=false;
    return true;
  }
  bool compareNumber(String enteredNumber){
    if(enteredNumber.compareTo(this._studentNumber)==0)
      return true;
    return false;
  }
  bool comparePassword(String enteredPassword){
    if(enteredPassword.compareTo(this._password)==0)
      return true;
    return false;
  }
}

void main() {

  userData a=userData("ozan", "onceken", "190104545", "2015555", "123");
  print(a);
  a.giveBike(42);
  print(a);
  if(a.compareNumber("enteredMail"))
    print("mail is true");
  else
    print("Mail is wrong");
  a.oneDayAfter();
  a.oneDayAfter();
  a.oneDayAfter();
  a.oneDayAfter();
  a.oneDayAfter();
  a.oneDayAfter();
  a.oneDayAfter();
  a.oneDayAfter();
  a.oneDayAfter();
  a.oneDayAfter();
  a.oneDayAfter();
  a.oneDayAfter();
  print("-------------------------");
  print(a);
  a.deliverBike(12);
  print("-------------------------");
  print(a);
  a.deliverBike(42);
  print("-------------------------");
  print(a);
}