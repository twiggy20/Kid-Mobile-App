class Student{
  String firstName;
  String surname;
  int age;
  String level;
  String gender;

  Student({this.firstName, this.surname, this.age, this.level, this.gender});

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'surname': surname,
      'age': age,
      'level': level,
      'gender': gender,
    };
  }
}