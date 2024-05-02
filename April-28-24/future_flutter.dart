Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return "Data fetched successfully";
}

String returnData() {
  return "Normal Data";
}

ourData() async {
  await Future.delayed(Duration(seconds: 3));
  return "Without writing return value";
}

void main() {
  print(returnData());
  ourData().then((data) {
    print(data);
  });
  fetchData().then((data) {
    print(data);
  });
}
