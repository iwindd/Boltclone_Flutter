class User {
  String firstname;
  String lastname;
  String number;

  User(this.firstname, this.lastname, this.number);
}

class AuthenticationService {
  List<User> users = [
    User("Achirawit", "Kaewkhong", "0825324117"),
    User("Kaewkhong", "Achirawit", "0825324118"),
  ];

  User? _userData;

  User? get userData => _userData;

  User findUser(String number) =>
      users.firstWhere((user) => user.number == number);

  bool isLoggedIn() {
    return _userData != null;
  }

  void signIn(String number) {
    User userData = findUser(number);

    _userData = userData;
  }

  void logout() {
    _userData = null;
  }
}
