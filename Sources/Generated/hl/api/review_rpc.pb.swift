// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: hl/api/review_rpc.proto
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

struct PBReviewHotelRequest: SwiftProtobuf.Message {
  static let protoMessageName: String = "ReviewHotelRequest"

  var id: UInt32 = 0

  var locale: String = String()

  var limit: UInt32 = 0

  var offset: UInt32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularUInt32Field(value: &self.id)
      case 2: try decoder.decodeSingularStringField(value: &self.locale)
      case 3: try decoder.decodeSingularUInt32Field(value: &self.limit)
      case 4: try decoder.decodeSingularUInt32Field(value: &self.offset)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.id != 0 {
      try visitor.visitSingularUInt32Field(value: self.id, fieldNumber: 1)
    }
    if !self.locale.isEmpty {
      try visitor.visitSingularStringField(value: self.locale, fieldNumber: 2)
    }
    if self.limit != 0 {
      try visitor.visitSingularUInt32Field(value: self.limit, fieldNumber: 3)
    }
    if self.offset != 0 {
      try visitor.visitSingularUInt32Field(value: self.offset, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

struct PBReviewHotelResponse: SwiftProtobuf.Message {
  static let protoMessageName: String = "ReviewHotelResponse"

  var reviews: [PBHotelReview] = []

  var gates: Dictionary<UInt32,PBGate> = [:]

  var gatesStat: Dictionary<UInt32,PBReviewHotelResponse.Stat> = [:]

  var unknownFields = SwiftProtobuf.UnknownStorage()

  struct Stat: SwiftProtobuf.Message {
    static let protoMessageName: String = PBReviewHotelResponse.protoMessageName + ".Stat"

    var count: UInt32 = 0

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}

    /// Used by the decoding initializers in the SwiftProtobuf library, not generally
    /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
    /// initializers are defined in the SwiftProtobuf library. See the Message and
    /// Message+*Additions` files.
    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularUInt32Field(value: &self.count)
        default: break
        }
      }
    }

    /// Used by the encoding methods of the SwiftProtobuf library, not generally
    /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
    /// other serializer methods are defined in the SwiftProtobuf library. See the
    /// `Message` and `Message+*Additions` files.
    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
      if self.count != 0 {
        try visitor.visitSingularUInt32Field(value: self.count, fieldNumber: 1)
      }
      try unknownFields.traverse(visitor: &visitor)
    }
  }

  init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 2: try decoder.decodeRepeatedMessageField(value: &self.reviews)
      case 3: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufUInt32,PBGate>.self, value: &self.gates)
      case 4: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufUInt32,PBReviewHotelResponse.Stat>.self, value: &self.gatesStat)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.reviews.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.reviews, fieldNumber: 2)
    }
    if !self.gates.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufUInt32,PBGate>.self, value: self.gates, fieldNumber: 3)
    }
    if !self.gatesStat.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufUInt32,PBReviewHotelResponse.Stat>.self, value: self.gatesStat, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension PBReviewHotelRequest: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "locale"),
    3: .same(proto: "limit"),
    4: .same(proto: "offset"),
  ]

  func _protobuf_generated_isEqualTo(other: PBReviewHotelRequest) -> Bool {
    if self.id != other.id {return false}
    if self.locale != other.locale {return false}
    if self.limit != other.limit {return false}
    if self.offset != other.offset {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension PBReviewHotelResponse: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    2: .same(proto: "reviews"),
    3: .same(proto: "gates"),
    4: .standard(proto: "gates_stat"),
  ]

  func _protobuf_generated_isEqualTo(other: PBReviewHotelResponse) -> Bool {
    if self.reviews != other.reviews {return false}
    if self.gates != other.gates {return false}
    if self.gatesStat != other.gatesStat {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension PBReviewHotelResponse.Stat: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "count"),
  ]

  func _protobuf_generated_isEqualTo(other: PBReviewHotelResponse.Stat) -> Bool {
    if self.count != other.count {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
