import 'package:get/get.dart';

class Langueges extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en_US':{
      'login':'Login',
      'welcome_back':'Welcome\nback',
      'email_hint':'Email',
      'pass_hint':'Password',
    },
    'bn_BN':{
      'login':'প্রবেশ করুন',
      'welcome_back':'স্বাগতম\n ফিরে আসার জন্য '
    },
  };

}