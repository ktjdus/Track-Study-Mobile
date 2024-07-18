Map login() {
  return { 'myId': 'myToken'};
}
  
Map profile() {
  return { 'myId': 'myName'};
}
  
List notice() {
  return ['First', 'second', 'third'];
}

void main() {
  Future.delayed(Duration(milliseconds: 2000)).then((value) {
    print(login());
    
    Future.delayed(Duration(milliseconds: 1000)).then((value) {
      print(profile());
    });
    
    Future.delayed(Duration(milliseconds: 1500)).then((value) {
      print(notice());
    });
  });
}