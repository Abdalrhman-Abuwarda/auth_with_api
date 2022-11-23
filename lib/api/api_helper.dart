import 'package:abdullah_mansor/api/api_responce.dart';

mixin ApiHelper{
  ApiResponce get failedResponse => ApiResponce(message: 'Something went wrong!', status: false);
}