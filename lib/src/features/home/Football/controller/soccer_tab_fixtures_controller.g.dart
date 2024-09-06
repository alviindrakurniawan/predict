// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'soccer_tab_fixtures_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$soccerTabFixturesControllerHash() =>
    r'fc96ad5b70584a01c1163861669e8724a095a5c0';

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

abstract class _$SoccerTabFixturesController
    extends BuildlessAutoDisposeAsyncNotifier<
        Map<String, List<SoccerFixtureResult>>> {
  late final String leagueId;

  FutureOr<Map<String, List<SoccerFixtureResult>>> build({
    required String leagueId,
  });
}

/// See also [SoccerTabFixturesController].
@ProviderFor(SoccerTabFixturesController)
const soccerTabFixturesControllerProvider = SoccerTabFixturesControllerFamily();

/// See also [SoccerTabFixturesController].
class SoccerTabFixturesControllerFamily
    extends Family<AsyncValue<Map<String, List<SoccerFixtureResult>>>> {
  /// See also [SoccerTabFixturesController].
  const SoccerTabFixturesControllerFamily();

  /// See also [SoccerTabFixturesController].
  SoccerTabFixturesControllerProvider call({
    required String leagueId,
  }) {
    return SoccerTabFixturesControllerProvider(
      leagueId: leagueId,
    );
  }

  @override
  SoccerTabFixturesControllerProvider getProviderOverride(
    covariant SoccerTabFixturesControllerProvider provider,
  ) {
    return call(
      leagueId: provider.leagueId,
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
  String? get name => r'soccerTabFixturesControllerProvider';
}

/// See also [SoccerTabFixturesController].
class SoccerTabFixturesControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<SoccerTabFixturesController,
        Map<String, List<SoccerFixtureResult>>> {
  /// See also [SoccerTabFixturesController].
  SoccerTabFixturesControllerProvider({
    required String leagueId,
  }) : this._internal(
          () => SoccerTabFixturesController()..leagueId = leagueId,
          from: soccerTabFixturesControllerProvider,
          name: r'soccerTabFixturesControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$soccerTabFixturesControllerHash,
          dependencies: SoccerTabFixturesControllerFamily._dependencies,
          allTransitiveDependencies:
              SoccerTabFixturesControllerFamily._allTransitiveDependencies,
          leagueId: leagueId,
        );

  SoccerTabFixturesControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.leagueId,
  }) : super.internal();

  final String leagueId;

  @override
  FutureOr<Map<String, List<SoccerFixtureResult>>> runNotifierBuild(
    covariant SoccerTabFixturesController notifier,
  ) {
    return notifier.build(
      leagueId: leagueId,
    );
  }

  @override
  Override overrideWith(SoccerTabFixturesController Function() create) {
    return ProviderOverride(
      origin: this,
      override: SoccerTabFixturesControllerProvider._internal(
        () => create()..leagueId = leagueId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        leagueId: leagueId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<SoccerTabFixturesController,
      Map<String, List<SoccerFixtureResult>>> createElement() {
    return _SoccerTabFixturesControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SoccerTabFixturesControllerProvider &&
        other.leagueId == leagueId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, leagueId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SoccerTabFixturesControllerRef on AutoDisposeAsyncNotifierProviderRef<
    Map<String, List<SoccerFixtureResult>>> {
  /// The parameter `leagueId` of this provider.
  String get leagueId;
}

class _SoccerTabFixturesControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<SoccerTabFixturesController,
        Map<String, List<SoccerFixtureResult>>>
    with SoccerTabFixturesControllerRef {
  _SoccerTabFixturesControllerProviderElement(super.provider);

  @override
  String get leagueId =>
      (origin as SoccerTabFixturesControllerProvider).leagueId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
