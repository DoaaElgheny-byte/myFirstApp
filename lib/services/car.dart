// @Injectable({
//     providedIn: 'root'
// })
import 'package:myFirstApp/common/share/httpApi.dart';

class CarService {
  final String controller = '/Car';
  var http = new HttpApi();

  getList() {
    return HttpApi.getData('$controller/GetList');
  }
}
