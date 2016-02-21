library dialog_polyfill;

import 'dart:html';
import 'dart:js';

class Dialog {
  final Element dialog;
  JsObject _proxy;

  Dialog(this.dialog) {
    _proxy = new JsObject.fromBrowserObject(dialog);
    if (!_proxy.hasProperty('showModel')) {
      context['dialogPolyfill']?.callMethod('registerDialog', [dialog]);
    }
  }

  /// Show the [dialog] modally.
  showModal() {
    _proxy.callMethod('showModal');
  }

  /// Open or close this dialog.
  void set open(bool open) {
    _proxy.callMethod('setOpen', [open]);
  }

  /// Shows the dialog. This is idempotent and will always succeed.
  void show() {
    _proxy.callMethod('show');
  }

  /// Closes the dialog. This is optional vs clearing the open
  /// attribute, however this fires a `close` event.
  void close() {
    _proxy.callMethod('close');
  }
}
