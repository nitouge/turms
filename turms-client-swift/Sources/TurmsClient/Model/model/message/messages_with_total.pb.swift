// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: model/message/messages_with_total.proto
//
// For information on using the generated types, please see the documentation:
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

public struct MessagesWithTotal {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var total: Int32 = 0

  public var chatType: ChatType = .private

  public var fromID: Int64 = 0

  public var messages: [Message] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "im.turms.proto"

extension MessagesWithTotal: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MessagesWithTotal"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "total"),
    2: .standard(proto: "chat_type"),
    3: .standard(proto: "from_id"),
    4: .same(proto: "messages"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self.total)
      case 2: try decoder.decodeSingularEnumField(value: &self.chatType)
      case 3: try decoder.decodeSingularInt64Field(value: &self.fromID)
      case 4: try decoder.decodeRepeatedMessageField(value: &self.messages)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.total != 0 {
      try visitor.visitSingularInt32Field(value: self.total, fieldNumber: 1)
    }
    if self.chatType != .private {
      try visitor.visitSingularEnumField(value: self.chatType, fieldNumber: 2)
    }
    if self.fromID != 0 {
      try visitor.visitSingularInt64Field(value: self.fromID, fieldNumber: 3)
    }
    if !self.messages.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.messages, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: MessagesWithTotal, rhs: MessagesWithTotal) -> Bool {
    if lhs.total != rhs.total {return false}
    if lhs.chatType != rhs.chatType {return false}
    if lhs.fromID != rhs.fromID {return false}
    if lhs.messages != rhs.messages {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
