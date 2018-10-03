// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: POGOProtos/Networking/Envelopes/ResponseEnvelope.proto
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

struct POGOProtos_Networking_Envelopes_ResponseEnvelope {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var statusCode: POGOProtos_Networking_Envelopes_ResponseEnvelope.StatusCode {
    get {return _storage._statusCode}
    set {_uniqueStorage()._statusCode = newValue}
  }

  var requestID: UInt64 {
    get {return _storage._requestID}
    set {_uniqueStorage()._requestID = newValue}
  }

  var apiURL: String {
    get {return _storage._apiURL}
    set {_uniqueStorage()._apiURL = newValue}
  }

  var platformReturns: [POGOProtos_Networking_Envelopes_ResponseEnvelope.PlatformResponse] {
    get {return _storage._platformReturns}
    set {_uniqueStorage()._platformReturns = newValue}
  }

  var authTicket: POGOProtos_Networking_Envelopes_AuthTicket {
    get {return _storage._authTicket ?? POGOProtos_Networking_Envelopes_AuthTicket()}
    set {_uniqueStorage()._authTicket = newValue}
  }
  /// Returns true if `authTicket` has been explicitly set.
  var hasAuthTicket: Bool {return _storage._authTicket != nil}
  /// Clears the value of `authTicket`. Subsequent reads from it will return its default value.
  mutating func clearAuthTicket() {_uniqueStorage()._authTicket = nil}

  var returns: [Data] {
    get {return _storage._returns}
    set {_uniqueStorage()._returns = newValue}
  }

  var error: String {
    get {return _storage._error}
    set {_uniqueStorage()._error = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum StatusCode: SwiftProtobuf.Enum {
    typealias RawValue = Int
    case unknown // = 0

    /// valid response with no api url
    case ok // = 1

    /// the response envelope has api_url set and this response is valid
    case okRpcURLInResponse // = 2

    /// bad request
    case badRequest // = 3

    /// using unimplemented request or corrupt request
    case invalidRequest // = 51

    /// invalid platform request or corrupt platform request
    case invalidPlatformRequest // = 52

    /// a new rpc endpoint is available and you should redirect to there
    case redirect // = 53

    /// occurs when you send blank authinfo, or sending nonsense timings (ie LocationFix.timestampSnapshot == Signature.timestampSinceStart)
    case sessionInvalidated // = 100

    /// occurs when the login token is invalid
    case invalidAuthToken // = 102
    case UNRECOGNIZED(Int)

    init() {
      self = .unknown
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unknown
      case 1: self = .ok
      case 2: self = .okRpcURLInResponse
      case 3: self = .badRequest
      case 51: self = .invalidRequest
      case 52: self = .invalidPlatformRequest
      case 53: self = .redirect
      case 100: self = .sessionInvalidated
      case 102: self = .invalidAuthToken
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .unknown: return 0
      case .ok: return 1
      case .okRpcURLInResponse: return 2
      case .badRequest: return 3
      case .invalidRequest: return 51
      case .invalidPlatformRequest: return 52
      case .redirect: return 53
      case .sessionInvalidated: return 100
      case .invalidAuthToken: return 102
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  struct PlatformResponse {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var type: POGOProtos_Networking_Platform_PlatformRequestType = .methodUnset

    var response: Data = SwiftProtobuf.Internal.emptyData

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
  }

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

#if swift(>=4.2)

extension POGOProtos_Networking_Envelopes_ResponseEnvelope.StatusCode: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [POGOProtos_Networking_Envelopes_ResponseEnvelope.StatusCode] = [
    .unknown,
    .ok,
    .okRpcURLInResponse,
    .badRequest,
    .invalidRequest,
    .invalidPlatformRequest,
    .redirect,
    .sessionInvalidated,
    .invalidAuthToken,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "POGOProtos.Networking.Envelopes"

extension POGOProtos_Networking_Envelopes_ResponseEnvelope: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ResponseEnvelope"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "status_code"),
    2: .standard(proto: "request_id"),
    3: .standard(proto: "api_url"),
    6: .standard(proto: "platform_returns"),
    7: .standard(proto: "auth_ticket"),
    100: .same(proto: "returns"),
    101: .same(proto: "error"),
  ]

  fileprivate class _StorageClass {
    var _statusCode: POGOProtos_Networking_Envelopes_ResponseEnvelope.StatusCode = .unknown
    var _requestID: UInt64 = 0
    var _apiURL: String = String()
    var _platformReturns: [POGOProtos_Networking_Envelopes_ResponseEnvelope.PlatformResponse] = []
    var _authTicket: POGOProtos_Networking_Envelopes_AuthTicket? = nil
    var _returns: [Data] = []
    var _error: String = String()

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _statusCode = source._statusCode
      _requestID = source._requestID
      _apiURL = source._apiURL
      _platformReturns = source._platformReturns
      _authTicket = source._authTicket
      _returns = source._returns
      _error = source._error
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
        case 1: try decoder.decodeSingularEnumField(value: &_storage._statusCode)
        case 2: try decoder.decodeSingularUInt64Field(value: &_storage._requestID)
        case 3: try decoder.decodeSingularStringField(value: &_storage._apiURL)
        case 6: try decoder.decodeRepeatedMessageField(value: &_storage._platformReturns)
        case 7: try decoder.decodeSingularMessageField(value: &_storage._authTicket)
        case 100: try decoder.decodeRepeatedBytesField(value: &_storage._returns)
        case 101: try decoder.decodeSingularStringField(value: &_storage._error)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._statusCode != .unknown {
        try visitor.visitSingularEnumField(value: _storage._statusCode, fieldNumber: 1)
      }
      if _storage._requestID != 0 {
        try visitor.visitSingularUInt64Field(value: _storage._requestID, fieldNumber: 2)
      }
      if !_storage._apiURL.isEmpty {
        try visitor.visitSingularStringField(value: _storage._apiURL, fieldNumber: 3)
      }
      if !_storage._platformReturns.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._platformReturns, fieldNumber: 6)
      }
      if let v = _storage._authTicket {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
      }
      if !_storage._returns.isEmpty {
        try visitor.visitRepeatedBytesField(value: _storage._returns, fieldNumber: 100)
      }
      if !_storage._error.isEmpty {
        try visitor.visitSingularStringField(value: _storage._error, fieldNumber: 101)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: POGOProtos_Networking_Envelopes_ResponseEnvelope, rhs: POGOProtos_Networking_Envelopes_ResponseEnvelope) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._statusCode != rhs_storage._statusCode {return false}
        if _storage._requestID != rhs_storage._requestID {return false}
        if _storage._apiURL != rhs_storage._apiURL {return false}
        if _storage._platformReturns != rhs_storage._platformReturns {return false}
        if _storage._authTicket != rhs_storage._authTicket {return false}
        if _storage._returns != rhs_storage._returns {return false}
        if _storage._error != rhs_storage._error {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension POGOProtos_Networking_Envelopes_ResponseEnvelope.StatusCode: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNKNOWN"),
    1: .same(proto: "OK"),
    2: .same(proto: "OK_RPC_URL_IN_RESPONSE"),
    3: .same(proto: "BAD_REQUEST"),
    51: .same(proto: "INVALID_REQUEST"),
    52: .same(proto: "INVALID_PLATFORM_REQUEST"),
    53: .same(proto: "REDIRECT"),
    100: .same(proto: "SESSION_INVALIDATED"),
    102: .same(proto: "INVALID_AUTH_TOKEN"),
  ]
}

extension POGOProtos_Networking_Envelopes_ResponseEnvelope.PlatformResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = POGOProtos_Networking_Envelopes_ResponseEnvelope.protoMessageName + ".PlatformResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "response"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularEnumField(value: &self.type)
      case 2: try decoder.decodeSingularBytesField(value: &self.response)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.type != .methodUnset {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 1)
    }
    if !self.response.isEmpty {
      try visitor.visitSingularBytesField(value: self.response, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: POGOProtos_Networking_Envelopes_ResponseEnvelope.PlatformResponse, rhs: POGOProtos_Networking_Envelopes_ResponseEnvelope.PlatformResponse) -> Bool {
    if lhs.type != rhs.type {return false}
    if lhs.response != rhs.response {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}