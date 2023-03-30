class UserAccount {
  String? id;
  String? username;
  String? password;

  UserAccount(this.id, this.username, this.password);

  UserAccount.fromUser();

  UserAccount.fromMap(dynamic obj) {
    username = obj['username'];
    password = obj['password'];
  }

  // sending data to server
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'username': username,
      'password': password,
    };
  }
}