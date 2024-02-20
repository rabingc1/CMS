



List<imageModel> model = [
  imageModel(image: "images/academicinfo.png", Name: "AcademicInfo"),
  imageModel(image: "images/assignment.png", Name: "Assignment"),
  imageModel(image: "images/event.png", Name: "Upcoming Event"),
  imageModel(image: "images/login.png", Name: "Homepage"),
  imageModel(image: "images/result.png", Name: "View Result"),
  imageModel(image: "images/timetable.png", Name: "Time Table"),
  imageModel(image: "images/faculty.png", Name: "faculty"),


];

class imageModel {
  String image;
  String Name;
  imageModel ({
    required this.image,
    required this.Name,
  });


  // Getter for the length of the model list
  static int get modelLength => model.length;
}


