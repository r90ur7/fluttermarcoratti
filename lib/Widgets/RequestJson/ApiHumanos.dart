import 'package:http/http.dart' as http;

const baseUrl = "https://jsonplaceholder.typicode.com/users";

class UserService{
  static Future getUsers()async {
    var url = "$baseUrl/users";
    return await http.get(url as Uri);
  }
}