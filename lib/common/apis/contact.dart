
import 'package:kittycav/common/entities/entities.dart';
import 'package:kittycav/common/utils/utils.dart';

class ContactAPI {

  static Future<ContactResponseEntity> post_contact() async {
    var response = await HttpUtil().post(
      'api/contact',
    );
    return ContactResponseEntity.fromJson(response);
  }
}