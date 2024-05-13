class EmployeeModel {
  String? status;
  List<Data>? data;
  String? message;

  EmployeeModel(Map<String, dynamic> jsonData) {
    status = jsonData['status'];
    message = jsonData['message'];

    data = [];
    jsonData['data'].forEach((mapObj) {
      Data obj = Data(mapObj);
      data!.add(obj);
    });
  }
}

class Data {
  int? id;
  String? employeeName;
  int? employeeSalary;
  int? employeeAge;
  String? profileImage;

  Data(Map<String, dynamic> json) {
    id = json['id'];
    employeeName = json['employee_name'];
    employeeSalary = json['employee_salary'];
    employeeAge = json['employee_age'];
    profileImage = json['profile_image'];
  }
}

class OneEmployeeModel {
  String? status;
  List<MapData>? data;
  String? message;

  OneEmployeeModel(Map<String, dynamic> jsonData) {
    status = jsonData['status'];
    message = jsonData['message'];

    data = [];
    var mapData = jsonData['data'];
    MapData mapObj = MapData(mapData);
    data!.add(mapObj);
    // data = {};
    // jsonData.putIfAbsent(key, () => null)
  }
}

class MapData {
  int? id;
  String? empName;
  int? empSal;
  int? empAge;
  String? profilePic;

  MapData(Map<String, dynamic> mapData) {
    id = mapData['id'];
    empName = mapData['employee_name'];
    empSal = mapData['employee_salary'];
    empAge = mapData['employee_age'];
    profilePic = mapData['profile_image'];
  }
}
