// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'soccer_tab_h2h_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$soccerTabH2HControllerHash() =>
    r'c14c0e0aeac2659b772b704b42cd8a7e178bfa6b';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$SoccerTabH2HController
    extends BuildlessAutoDisposeAsyncNotifier<SoccerH2HModel> {
  late final String homeTeamId;
  late final String awayTeamId;

  FutureOr<SoccerH2HModel> build(
    String homeTeamId,
    String awayTeamId,
  );
}

/// See also [SoccerTabH2HController].
@ProviderFor(SoccerTabH2HController)
const soccerTabH2HControllerProvider = SoccerTabH2HControllerFamily();

/// See also [SoccerTabH2HController].
class SoccerTabH2HControllerFamily extends Family<AsyncValue<SoccerH2HModel>> {
  /// See also [SoccerTabH2HController].
  const SoccerTabH2HControllerFamily();

  /// See also [SoccerTabH2HController].
  SoccerTabH2HControllerProvider call(
    String homeTeamId,
    String awayTeamId,
  ) {
    return SoccerTabH2HControllerProvider(
      homeTeamId,
      awayTeamId,
    );
  }

  @override
  SoccerTabH2HControllerProvider getProviderOverride(
    covariant SoccerTabH2HControllerProvider provider,
  ) {
    return call(
      provider.homeTeamId,
      provider.awayTeamId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'soccerTabH2HControllerProvider';
}

/// See also [SoccerTabH2HController].
class SoccerTabH2HControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<SoccerTabH2HController,
        SoccerH2HModel> {
  /// See also [SoccerTabH2HController].
  SoccerTabH2HControllerProvider(
    String homeTeamId,
    String awayTeamId,
  ) : this._internal(
          () => SoccerTabH2HController()
            ..homeTeamId = homeTeamId
            ..awayTeamId = awayTeamId,
          from: soccerTabH2HControllerProvider,
          name: r'soccerTabH2HControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$soccerTabH2HControllerHash,
          dependencies: SoccerTabH2HControllerFamily._dependencies,
          allTransitiveDependencies:
              SoccerTabH2HControllerFamily._allTransitiveDependencies,
          homeTeamId: homeTeamId,
          awayTeamId: awayTeamId,
        );

  SoccerTabH2HControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.homeTeamId,
    required this.awayTeamId,
  }) : super.internal();

  final String homeTeamId;
  final String awayTeamId;

  @override
  FutureOr<SoccerH2HModel> runNotifierBuild(
    covariant SoccerTabH2HController notifier,
  ) {
    return notifier.build(
      homeTeamId,
      awayTeamId,
    );
  }

  @override
  Override overrideWith(SoccerTabH2HController Function() create) {
    return ProviderOverride(
      origin: this,
      override: SoccerTabH2HControllerProvider._internal(
        () => create()
          ..homeTeamId = homeTeamId
          ..awayTeamId = awayTeamId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        homeTeamId: homeTeamId,
        awayTeamId: awayTeamId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<SoccerTabH2HController,
      SoccerH2HModel> createElement() {
    return _SoccerTabH2HControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SoccerTabH2HControllerProvider &&
        other.homeTeamId == homeTeamId &&
        other.awayTeamId == awayTeamId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, homeTeamId.hashCode);
    hash = _SystemHash.combine(hash, awayTeamId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SoccerTabH2HControllerRef
    on AutoDisposeAsyncNotifierProviderRef<SoccerH2HModel> {
  /// The parameter `homeTeamId` of this provider.
  String get homeTeamId;

  /// The parameter `awayTeamId` of this provider.
  String get awayTeamId;
}

class _SoccerTabH2HControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<SoccerTabH2HController,
        SoccerH2HModel> with SoccerTabH2HControllerRef {
  _SoccerTabH2HControllerProviderElement(super.provider);

  @override
  String get homeTeamId =>
      (origin as SoccerTabH2HControllerProvider).homeTeamId;
  @override
  String get awayTeamId =>
      (origin as SoccerTabH2HControllerProvider).awayTeamId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
