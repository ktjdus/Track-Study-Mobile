Future<void> login() async {
  await Future.delayed(Duration(seconds: 2));
  print({ "myID": "myToken"});
}

Future<void> profile() async {
  await Future.delayed(Duration(seconds: 1));
  print({ "myID": "myName"});
}

Future<void> notice() async {
  await Future.delayed(Duration(milliseconds: 1500));
  print(['First', 'Second', 'Third']);
}

void main() {
  Future.any([login()]).then((value) {
    profile();
    notice();
  });
}