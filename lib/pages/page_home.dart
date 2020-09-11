import 'package:get_server/get_server.dart';

class HomePage extends GetView {
  @override
  build(Context context) {
    return HtmlText('''  
   <!DOCTYPE html>
<html>
<head>
<title>Home</title>
</head>
<body> 
<h1>Api funcionado</h1>
<p> Essa é a home </p>
</body>
</html>

    ''');
  }
}
