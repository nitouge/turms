// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: request/group/blacklist/create_group_blacklisted_user_request.proto
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

public struct CreateGroupBlacklistedUserRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var groupID: Int64 = 0

  public var blacklistedUserID: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "im.turms.proto"

extension CreateGroupBlacklistedUserRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CreateGroupBlacklistedUserRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "group_id"),
    2: .standard(proto: "blacklisted_user_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.groupID)
      case 2: try decoder.decodeSingularInt64Field(value: &self.blacklistedUserID)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.groupID != 0 {
      try visitor.visitSingularInt64Field(value: self.groupID, fieldNumber: 1)
    }
    if self.blacklistedUserID != 0 {
      try visitor.visitSingularInt64Field(value: self.blacklistedUserID, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: CreateGroupBlacklistedUserRequest, rhs: CreateGroupBlacklistedUserRequest) -> Bool {
    if lhs.groupID != rhs.groupID {return false}
    if lhs.blacklistedUserID != rhs.blacklistedUserID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
