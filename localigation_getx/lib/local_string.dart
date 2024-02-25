import 'package:get/get.dart';

class LocaleString extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en_US':{
      'appbar':'Code Aid',
      'hello':'Hello Bangladesh',
      'description':'Bangladesh is a beautiful country'
    },
    'bn_BN':{
      'appbar':'কোড এইড',
      'hello':'হ্যালো বাংলাদেশ',
      'description':'বাংলাদেশ একটি সুন্দর দেশ'
    }
  };

}