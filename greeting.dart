import './sign_in.dart';

String greetingpage(){
  String greeting() {
  var hour = new DateTime.now().hour;

  if (hour < 12) {
    return 'Good Morning, $name';
  }
  if (hour < 17) {
    return 'Good Afternoon, $name';
  }
  return 'Good Evening, $name';
  }

  return greeting();
}