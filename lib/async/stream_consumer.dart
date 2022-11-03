import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyStreamConsumer with StreamConsumerMixin<S> implements StreamConsumer<S> { 
///   // Must override 
///   @override 
///   StreamConsumer get streamConsumer;
///   ...
/// }
/// ```
mixin StreamConsumerMixin<S> implements StreamConsumer<S> {
	@protected
	StreamConsumer<S> get streamConsumer;

	@override
	Future addStream(Stream<S> stream) => streamConsumer.addStream(stream);

	@override
	Future close() => streamConsumer.close();

}
