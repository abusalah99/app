
// import 'package:http/http.dart' as http;

// import 'dart:convert';

// void main() async {
//   var data = await fetchAlbum();
//   for (var i = 0; i < 100; i++) {
//     print(data[i]['userId']);
//     print(data[i]['title']);
//     print("____________________________");
//   }
// }

// Future<dynamic> fetchAlbum() async {
//   final url = "https://jsonplaceholder.typicode.com/posts";
//   var res = await http.get(Uri.parse(url));
//   if (res.statusCode == 200) {
//     var obj = json.decode(res.body);
//     return obj;
//   } else {
//     throw Exception("errror !!");
//   }
// }
