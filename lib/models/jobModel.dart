

// http://192.168.43.150:8000/api/ShowAllJobs?

// [
//     {
//         "id": 1,
//         "company_id": 1,
//         "jobName": "Maltimedia2",
//         "jobSpecialization": "Marketting",
//         "jobLocation": "UK",
//         "category": "IT",
//         "jobDiscription": "ADFSRYHTUOFLOK,JMHGFVDCSXA",
//         "jobRequirements": "nvhjhgjjoi.asy\\,cgdyiksadwt",
//         "jobHours": "5H",
//         "jobExperience": 2,
//         "jobSalary": 500,
//         "deleted_at": null,
//         "created_at": "2024-06-08T10:39:54.000000Z",
//         "updated_at": "2024-06-08T10:39:54.000000Z"
//     }
// ]
// ignore: camel_case_types
class jobModel {
  final int id;
  // ignore: non_constant_identifier_names
  final int company_id;
  final String jobName;
  final String jobSpecialization;
  final String jobLocation;
  final String category;
  final String jobDiscription;
  final String jobRequirements;
  final String jobHours;
  final int jobExperience;
  final int jobSalary;
  // ignore: non_constant_identifier_names
  final String created_at;
  jobModel({
    required this.id,
    // ignore: non_constant_identifier_names
    required this.company_id,
    required this.jobName,
    required this.jobSpecialization,
    required this.jobLocation,
    required this.category,
    required this.jobDiscription,
    required this.jobRequirements,
    required this.jobHours,
    required this.jobExperience,
    required this.jobSalary,
    // ignore: non_constant_identifier_names
    required this.created_at,
  });

  factory jobModel.fromJson(jsonData) {
    return jobModel(
      id: jsonData['id'],
      company_id: jsonData['company_id'],
      jobName: jsonData['jobName'],
      jobSpecialization: jsonData['jobSpecialization'],
      jobLocation: jsonData['jobLocation'],
      category: jsonData['category'],
      jobDiscription: jsonData['jobDiscription'],
      jobRequirements: jsonData['jobRequirements'],
      jobHours: jsonData['jobHours'],
      jobExperience: jsonData['jobExperience'],
      jobSalary: jsonData['jobSalary'],
      created_at: jsonData['created_at'],
    );
  }
}


// http://192.168.43.150:8000/api/ShowCategorys?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC40My4xNTA6ODAwMC9hcGkvYXV0aC9sb2dpbiIsImlhdCI6MTcyMTU4Njg0NCwiZXhwIjoxNzIxNTkwNDQ0LCJuYmYiOjE3MjE1ODY4NDQsImp0aSI6IkRKYlI2SDdrY0dwcVVVZEEiLCJzdWIiOiIyIiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.AV-RkmL0djqO1LRxyZ99ylNEWCjvLUAH1IJOAgWSAus


// [
//     {
//         "id": 1,
//         "category": "IT",
//         "created_at": "2024-06-08T10:24:20.000000Z",
//         "updated_at": "2024-06-08T10:24:20.000000Z"
//     }
// ]
  

// http://192.168.43.150:8000/api/ShowCompanyProfile/1?token=


// {
//     "id": 1,
//     "user_id": 1,
//     "companyName": "Apple",
//     "profileImage": "C:\\xampp\\tmp\\phpFFD7.tmp",
//     "companyAbout": "aASODTI,UKYFKAKUYSDKUEWT7DKWE",
//     "companyLocation": "USA",
//     "NumberOfEmployees": "+200K",
//     "created_at": "2024-06-08T10:20:44.000000Z",
//     "updated_at": "2024-06-08T10:20:44.000000Z"
// }