class userAccount{
  String?_id;
  String? _username;
  String? _password;

  userAccount(this._id, this._username, this._password);

  userAccount.fromUser();

  userAccount.fromMap(dynamic obj){
    this._username = obj['username'];
    this._password = obj['password'];
  }

  String? get username => this._username;

  set username(String? value){
    this._username = value;
  }

  String? get password => this._password;

  set password(String? value){
    this._password = value;
  }

  String? get id => this._id;

  set id(String? value){
    this._id = value;
  }

  // sending data to server
  Map<String, dynamic> toMap() {
    return{
      'id' : _id,
      'username' : _username,
      'password' : _password,
    };
  }


}