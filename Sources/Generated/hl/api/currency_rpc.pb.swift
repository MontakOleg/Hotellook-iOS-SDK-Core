// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: hl/api/currency_rpc.proto
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

struct PBCurrencyInfoRequest: SwiftProtobuf.Message {
  static let protoMessageName: String = "CurrencyInfoRequest"

  var locale: String = String()

  var fields: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.locale)
      case 2: try decoder.decodeSingularStringField(value: &self.fields)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.locale.isEmpty {
      try visitor.visitSingularStringField(value: self.locale, fieldNumber: 1)
    }
    if !self.fields.isEmpty {
      try visitor.visitSingularStringField(value: self.fields, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

struct PBCurrencyMeta: SwiftProtobuf.Message {
  static let protoMessageName: String = "CurrencyMeta"

  var code: String = String()

  var name: String = String()

  var sign: String = String()

  var format: String = String()

  var popular: Bool = false

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.code)
      case 2: try decoder.decodeSingularStringField(value: &self.name)
      case 3: try decoder.decodeSingularStringField(value: &self.sign)
      case 4: try decoder.decodeSingularStringField(value: &self.format)
      case 5: try decoder.decodeSingularBoolField(value: &self.popular)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.code.isEmpty {
      try visitor.visitSingularStringField(value: self.code, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    if !self.sign.isEmpty {
      try visitor.visitSingularStringField(value: self.sign, fieldNumber: 3)
    }
    if !self.format.isEmpty {
      try visitor.visitSingularStringField(value: self.format, fieldNumber: 4)
    }
    if self.popular != false {
      try visitor.visitSingularBoolField(value: self.popular, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

struct PBCurrencyInfoResponse: SwiftProtobuf.Message {
  static let protoMessageName: String = "CurrencyInfoResponse"

  var rates: Dictionary<String,Float> = [:]

  var meta: [PBCurrencyMeta] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufFloat>.self, value: &self.rates)
      case 2: try decoder.decodeRepeatedMessageField(value: &self.meta)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.rates.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufFloat>.self, value: self.rates, fieldNumber: 1)
    }
    if !self.meta.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.meta, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension PBCurrencyInfoRequest: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "locale"),
    2: .same(proto: "fields"),
  ]

  func _protobuf_generated_isEqualTo(other: PBCurrencyInfoRequest) -> Bool {
    if self.locale != other.locale {return false}
    if self.fields != other.fields {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension PBCurrencyMeta: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "code"),
    2: .same(proto: "name"),
    3: .same(proto: "sign"),
    4: .same(proto: "format"),
    5: .same(proto: "popular"),
  ]

  func _protobuf_generated_isEqualTo(other: PBCurrencyMeta) -> Bool {
    if self.code != other.code {return false}
    if self.name != other.name {return false}
    if self.sign != other.sign {return false}
    if self.format != other.format {return false}
    if self.popular != other.popular {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension PBCurrencyInfoResponse: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "rates"),
    2: .same(proto: "meta"),
  ]

  func _protobuf_generated_isEqualTo(other: PBCurrencyInfoResponse) -> Bool {
    if self.rates != other.rates {return false}
    if self.meta != other.meta {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
