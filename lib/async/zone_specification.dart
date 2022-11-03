import 'dart:async';
import 'package:meta/meta.dart';

/// ```dart
/// class MyZoneSpecification with ZoneSpecificationMixin implements ZoneSpecification { 
///   // Must override 
///   @override 
///   ZoneSpecification get zoneSpecification;
///   ...
/// }
/// ```
mixin ZoneSpecificationMixin implements ZoneSpecification {
	@protected
	ZoneSpecification get zoneSpecification;

	@override
	HandleUncaughtErrorHandler? get handleUncaughtError => zoneSpecification.handleUncaughtError;

	@override
	RunHandler? get run => zoneSpecification.run;

	@override
	RunUnaryHandler? get runUnary => zoneSpecification.runUnary;

	@override
	RunBinaryHandler? get runBinary => zoneSpecification.runBinary;

	@override
	RegisterCallbackHandler? get registerCallback => zoneSpecification.registerCallback;

	@override
	RegisterUnaryCallbackHandler? get registerUnaryCallback => zoneSpecification.registerUnaryCallback;

	@override
	RegisterBinaryCallbackHandler? get registerBinaryCallback => zoneSpecification.registerBinaryCallback;

	@override
	ErrorCallbackHandler? get errorCallback => zoneSpecification.errorCallback;

	@override
	ScheduleMicrotaskHandler? get scheduleMicrotask => zoneSpecification.scheduleMicrotask;

	@override
	CreateTimerHandler? get createTimer => zoneSpecification.createTimer;

	@override
	CreatePeriodicTimerHandler? get createPeriodicTimer => zoneSpecification.createPeriodicTimer;

	@override
	PrintHandler? get print => zoneSpecification.print;

	@override
	ForkHandler? get fork => zoneSpecification.fork;

}
