// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: POGOProtos/Data/Raid/RaidInfo.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct POGOProtos_Data_Raid_RaidInfo {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var raidSeed: Int64 {
    get {return _storage._raidSeed}
    set {_uniqueStorage()._raidSeed = newValue}
  }

  var raidSpawnMs: Int64 {
    get {return _storage._raidSpawnMs}
    set {_uniqueStorage()._raidSpawnMs = newValue}
  }

  var raidBattleMs: Int64 {
    get {return _storage._raidBattleMs}
    set {_uniqueStorage()._raidBattleMs = newValue}
  }

  var raidEndMs: Int64 {
    get {return _storage._raidEndMs}
    set {_uniqueStorage()._raidEndMs = newValue}
  }

  var raidPokemon: POGOProtos_Data_PokemonData {
    get {return _storage._raidPokemon ?? POGOProtos_Data_PokemonData()}
    set {_uniqueStorage()._raidPokemon = newValue}
  }
  /// Returns true if `raidPokemon` has been explicitly set.
  var hasRaidPokemon: Bool {return _storage._raidPokemon != nil}
  /// Clears the value of `raidPokemon`. Subsequent reads from it will return its default value.
  mutating func clearRaidPokemon() {_uniqueStorage()._raidPokemon = nil}

  var raidLevel: POGOProtos_Enums_RaidLevel {
    get {return _storage._raidLevel}
    set {_uniqueStorage()._raidLevel = newValue}
  }

  var complete: Bool {
    get {return _storage._complete}
    set {_uniqueStorage()._complete = newValue}
  }

  var isExclusive: Bool {
    get {return _storage._isExclusive}
    set {_uniqueStorage()._isExclusive = newValue}
  }

  var isRaidHidden: Bool {
    get {return _storage._isRaidHidden}
    set {_uniqueStorage()._isRaidHidden = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "POGOProtos.Data.Raid"

extension POGOProtos_Data_Raid_RaidInfo: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".RaidInfo"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "raid_seed"),
    2: .standard(proto: "raid_spawn_ms"),
    3: .standard(proto: "raid_battle_ms"),
    4: .standard(proto: "raid_end_ms"),
    5: .standard(proto: "raid_pokemon"),
    6: .standard(proto: "raid_level"),
    7: .same(proto: "complete"),
    8: .standard(proto: "is_exclusive"),
    9: .standard(proto: "is_raid_hidden"),
  ]

  fileprivate class _StorageClass {
    var _raidSeed: Int64 = 0
    var _raidSpawnMs: Int64 = 0
    var _raidBattleMs: Int64 = 0
    var _raidEndMs: Int64 = 0
    var _raidPokemon: POGOProtos_Data_PokemonData? = nil
    var _raidLevel: POGOProtos_Enums_RaidLevel = .unset
    var _complete: Bool = false
    var _isExclusive: Bool = false
    var _isRaidHidden: Bool = false

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _raidSeed = source._raidSeed
      _raidSpawnMs = source._raidSpawnMs
      _raidBattleMs = source._raidBattleMs
      _raidEndMs = source._raidEndMs
      _raidPokemon = source._raidPokemon
      _raidLevel = source._raidLevel
      _complete = source._complete
      _isExclusive = source._isExclusive
      _isRaidHidden = source._isRaidHidden
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularInt64Field(value: &_storage._raidSeed)
        case 2: try decoder.decodeSingularInt64Field(value: &_storage._raidSpawnMs)
        case 3: try decoder.decodeSingularInt64Field(value: &_storage._raidBattleMs)
        case 4: try decoder.decodeSingularInt64Field(value: &_storage._raidEndMs)
        case 5: try decoder.decodeSingularMessageField(value: &_storage._raidPokemon)
        case 6: try decoder.decodeSingularEnumField(value: &_storage._raidLevel)
        case 7: try decoder.decodeSingularBoolField(value: &_storage._complete)
        case 8: try decoder.decodeSingularBoolField(value: &_storage._isExclusive)
        case 9: try decoder.decodeSingularBoolField(value: &_storage._isRaidHidden)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._raidSeed != 0 {
        try visitor.visitSingularInt64Field(value: _storage._raidSeed, fieldNumber: 1)
      }
      if _storage._raidSpawnMs != 0 {
        try visitor.visitSingularInt64Field(value: _storage._raidSpawnMs, fieldNumber: 2)
      }
      if _storage._raidBattleMs != 0 {
        try visitor.visitSingularInt64Field(value: _storage._raidBattleMs, fieldNumber: 3)
      }
      if _storage._raidEndMs != 0 {
        try visitor.visitSingularInt64Field(value: _storage._raidEndMs, fieldNumber: 4)
      }
      if let v = _storage._raidPokemon {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
      if _storage._raidLevel != .unset {
        try visitor.visitSingularEnumField(value: _storage._raidLevel, fieldNumber: 6)
      }
      if _storage._complete != false {
        try visitor.visitSingularBoolField(value: _storage._complete, fieldNumber: 7)
      }
      if _storage._isExclusive != false {
        try visitor.visitSingularBoolField(value: _storage._isExclusive, fieldNumber: 8)
      }
      if _storage._isRaidHidden != false {
        try visitor.visitSingularBoolField(value: _storage._isRaidHidden, fieldNumber: 9)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: POGOProtos_Data_Raid_RaidInfo, rhs: POGOProtos_Data_Raid_RaidInfo) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._raidSeed != rhs_storage._raidSeed {return false}
        if _storage._raidSpawnMs != rhs_storage._raidSpawnMs {return false}
        if _storage._raidBattleMs != rhs_storage._raidBattleMs {return false}
        if _storage._raidEndMs != rhs_storage._raidEndMs {return false}
        if _storage._raidPokemon != rhs_storage._raidPokemon {return false}
        if _storage._raidLevel != rhs_storage._raidLevel {return false}
        if _storage._complete != rhs_storage._complete {return false}
        if _storage._isExclusive != rhs_storage._isExclusive {return false}
        if _storage._isRaidHidden != rhs_storage._isRaidHidden {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}