Future<void> login() {
  return Future.delayed(Duration(seconds: 2)).then((value) {
    print({'myID': 'myToken'});
  });
}

Future<void> profile() {
  return Future.delayed(Duration(seconds: 1)).then((value) {
    print({ "myID": "myName"});
  });
}

Future<void> notice() {
  return Future.delayed(Duration(milliseconds: 1500)).then((value) {
    print(['First', 'Second', 'Third']);
  });
}

void main() {
  Future.any([login()]).then((value) {
    profile();
    notice();
  });
}
