class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? githubLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.githubLink,
  });
}

List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
      image: 'assets/projects/1.png',
      title: 'Weather App',
      subtitle:
          'This Flutter project displays weather information for selected districts, utilizing the GetX package for state management and responsive UI updates.',
      githubLink: 'https://github.com/Kavin-Java-Developer/Weather_App.git'),
  ProjectUtils(
      image: 'assets/projects/2.png',
      title: 'To-Do Application',
      subtitle:
          'This Flutter project is a To-Do application that allows users to add, mark as complete, and delete tasks, using the GetX package for state management and reactive UI updates.',
      githubLink:
          'https://github.com/Kavin-Java-Developer/ToDo_Application.git'),
];

//work projects

List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
      image: 'assets/projects/3.png',
      title: 'ProTracker',
      subtitle:
          'ProTracker is a project scheduling and workflow automation system developed using the MERN stack, designed to enhance productivity and streamline project management processes.',
      githubLink:
          'https://github.com/Kavin-Java-Developer/Project-Scheduling-and-Workflow-Automation-System.git'),
  ProjectUtils(
      image: 'assets/projects/4.png',
      title: 'Employee Management System',
      subtitle:
          'Demonstrated proficiency in developing a comprehensive full-stack CRUD application utilizing Spring Boot and React Hooks with Functional Components',
      githubLink:
          'https://github.com/Kavin-Java-Developer/EmployeeManagementSystem-Backend.git'),
];
