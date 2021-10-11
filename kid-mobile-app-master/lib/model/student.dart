class Student{
  String firstName;
  String surname;
  int age;
  String level;
  String gender;
  String code;

  Student({this.firstName, this.surname, this.age, this.level, this.gender});

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'surname': surname,
      'age': age,
      'level': level,
      'gender': gender,
      'code': code
    };
  }

  Student.fromData(Map<String, dynamic> data)
      : firstName = data['firstName'],
        surname = data['surname'],
        age = data['age'],
        level = data['level'],
        code = data['code'],
        gender = data['gender'];
}