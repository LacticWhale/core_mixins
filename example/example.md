```dart
import 'dart:io';
import 'dart:typed_data';

import 'package:core_mixins/async/stream_mixin.dart';
import 'package:core_mixins/async/stream_sink_mixin.dart';
import 'package:core_mixins/io/socket_mixins.dart';
import 'package:core_mixins/io/i_o_sink_mixin.dart';


// Order of mixins matters.
class MySocket with SocketMixin implements Socket {
    MySocket(this.socket);

    // Every class must override getter with class name but with lower case.
    @override
    final Socket socket;

    // Now you can override any field.
}
```