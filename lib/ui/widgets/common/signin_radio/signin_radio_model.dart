import 'package:stacked/stacked.dart';

enum SingingCharacter { sms, whatsapp }

class SigninRadioModel extends BaseViewModel {
  SingingCharacter? _character = SingingCharacter.sms;

  SingingCharacter? get character => _character;

  void onChange(SingingCharacter? char) {
    if (char != null) {
      _character = char;
    }

    rebuildUi();
  }
}
