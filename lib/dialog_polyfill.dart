library dialog_polyfill;

import 'dart:html';
import 'dart:js';

registerDialog(Element dialog) {
  context['dialogPolyfill']?.callMethod('registerDialog', dialog);
}

/// Show the [dialog] modally.
showModal(Element dialog) {
  new JsObject.fromBrowserObject(dialog).callMethod('showModal');
}
