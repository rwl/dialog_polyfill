import 'dart:html';
import 'package:dialog_polyfill/dialog_polyfill.dart';

main() {
  var element = querySelector('dialog');
  var dialog = new Dialog(element);

  querySelector('#show').onClick.listen((_) {
    dialog.show();
  });
  querySelector('#show-modal').onClick.listen((_) {
    dialog.showModal();
  });
  querySelector('#close').onClick.listen((_) {
    dialog.close();
  });
}
