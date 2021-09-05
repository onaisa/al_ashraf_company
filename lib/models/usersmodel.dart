class UserModel {
  String name, email, password;
  int id;
  bool pirmisson;

  UserModel({
    this.id,
    this.name,
    this.password,
    this.email,
    this.pirmisson,
  });

  UserModel.fromjson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    password = json['password'];
    email = json['email'];
    pirmisson = json['pirmisson'];
  }
}

// List <UsersModel> Users=[
//   users(id:1,
//     name: "oula",
//     email: "oul@gmail.com",
//     password: "123654",
//     pirmisson: true
//    ),
//    users(id:2,
//     name: "noor",
//     email: "noornoor@gmail.com",
//     password: "100364",
//     pirmisson: true
//    )
// ];