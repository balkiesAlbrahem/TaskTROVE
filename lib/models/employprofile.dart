class employprofile_Model {
  final int id;
  // ignore: non_constant_identifier_names
  final int user_id;
  final String employeeName;
  final String profileImage;
  final String location;
  final String employeeSpecialization;
  final String employeeAcademicStatus;
  final String employeeComunnicationTool;
  final int expectedSalary;
  final int yearsOfExperience;

  employprofile_Model({
    required this.id,
    // ignore: non_constant_identifier_names
    required this.user_id,
    required this.employeeName,
    required this.profileImage,
    required this.location,
    required this.employeeSpecialization,
    required this.employeeAcademicStatus,
    required this.employeeComunnicationTool,
    required this.expectedSalary,
    required this.yearsOfExperience,
  });

  factory employprofile_Model.fromJson(jsonData) {
    return employprofile_Model(
      id: jsonData['id'],
      user_id: jsonData['user_id'],
      employeeName: jsonData['employeeName'],
      profileImage: jsonData['profileImage'],
      location: jsonData['location'],
      employeeSpecialization: jsonData['employeeSpecialization'],
      employeeAcademicStatus: jsonData['employeeAcademicStatus'],
      employeeComunnicationTool: jsonData['employeeComunnicationTool'],
      expectedSalary: jsonData['expectedSalary'],
      yearsOfExperience: jsonData['yearsOfExperience'],
    );
  }
}
// {
//     "id": 1,
//     "user_id": 2,
//     "employeeName": "delda",
//     "profileImage": "C:\\xampp\\tmp\\php6527.tmp",
//     "location": "Damas",
//     "employeeSpecialization": "IT",
//     "employeeAcademicStatus": "STUDENT",
//     "employeeComunnicationTool": "aliqwert@gmail.com",
//     "expectedSalary": 1000,
//     "yearsOfExperience": 6,
//     "created_at": "2024-06-08T10:46:17.000000Z",
//     "updated_at": "2024-06-08T10:46:17.000000Z"
// }