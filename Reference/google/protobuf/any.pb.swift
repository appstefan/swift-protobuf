/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: google/protobuf/any.proto
 *
 */

//  Protocol Buffers - Google's data interchange format
//  Copyright 2008 Google Inc.  All rights reserved.
//  https://developers.google.com/protocol-buffers/
// 
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions are
//  met:
// 
//      * Redistributions of source code must retain the above copyright
//  notice, this list of conditions and the following disclaimer.
//      * Redistributions in binary form must reproduce the above
//  copyright notice, this list of conditions and the following disclaimer
//  in the documentation and/or other materials provided with the
//  distribution.
//      * Neither the name of Google Inc. nor the names of its
//  contributors may be used to endorse or promote products derived from
//  this software without specific prior written permission.
// 
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
//  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
//  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
//  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
//  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
//  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
//  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
//  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
//  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
//  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

import Foundation


///   `Any` contains an arbitrary serialized protocol buffer message along with a
///   URL that describes the type of the serialized message.
///  
///   Protobuf library provides support to pack/unpack Any values in the form
///   of utility functions or additional generated methods of the Any type.
///  
///   Example 1: Pack and unpack a message in C++.
///  
///       Foo foo = ...;
///       Any any;
///       any.PackFrom(foo);
///       ...
///       if (any.UnpackTo(&foo)) {
///         ...
///       }
///  
///   Example 2: Pack and unpack a message in Java.
///  
///       Foo foo = ...;
///       Any any = Any.pack(foo);
///       ...
///       if (any.is(Foo.class)) {
///         foo = any.unpack(Foo.class);
///       }
///  
///    Example 3: Pack and unpack a message in Python.
///  
///       foo = Foo(...)
///       any = Any()
///       any.Pack(foo)
///       ...
///       if any.Is(Foo.DESCRIPTOR):
///         any.Unpack(foo)
///         ...
///  
///   The pack methods provided by protobuf library will by default use
///   'type.googleapis.com/full.type.name' as the type URL and the unpack
///   methods only use the fully qualified type name after the last '/'
///   in the type URL, for example "foo.bar.com/x/y.z" will yield type
///   name "y.z".
///  
///  
///   JSON
///   ====
///   The JSON representation of an `Any` value uses the regular
///   representation of the deserialized, embedded message, with an
///   additional field `@type` which contains the type URL. Example:
///  
///       package google.profile;
///       message Person {
///         string first_name = 1;
///         string last_name = 2;
///       }
///  
///       {
///         "@type": "type.googleapis.com/google.profile.Person",
///         "firstName": <string>,
///         "lastName": <string>
///       }
///  
///   If the embedded message type is well-known and has a custom JSON
///   representation, that representation will be embedded adding a field
///   `value` which holds the custom JSON in addition to the `@type`
///   field. Example (for message [google.protobuf.Duration][]):
///  
///       {
///         "@type": "type.googleapis.com/google.protobuf.Duration",
///         "value": "1.212s"
///       }
struct Google_Protobuf_Any: SwiftProtobuf.Message, SwiftProtobuf.Proto3Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  public var swiftClassName: String {return "Google_Protobuf_Any"}
  public var protoMessageName: String {return "Any"}
  public var protoPackageName: String {return "google.protobuf"}
  public static let _protobuf_fieldNames: FieldNameMap = [
    1: .unique(proto: "type_url", json: "typeUrl", swift: "typeURL"),
    2: .same(proto: "value", swift: "value"),
  ]


  ///   A URL/resource name whose content describes the type of the
  ///   serialized protocol buffer message.
  ///  
  ///   For URLs which use the scheme `http`, `https`, or no scheme, the
  ///   following restrictions and interpretations apply:
  ///  
  ///   * If no scheme is provided, `https` is assumed.
  ///   * The last segment of the URL's path must represent the fully
  ///     qualified name of the type (as in `path/google.protobuf.Duration`).
  ///     The name should be in a canonical form (e.g., leading "." is
  ///     not accepted).
  ///   * An HTTP GET on the URL must yield a [google.protobuf.Type][]
  ///     value in binary format, or produce an error.
  ///   * Applications are allowed to cache lookup results based on the
  ///     URL, or have them precompiled into a binary to avoid any
  ///     lookup. Therefore, binary compatibility needs to be preserved
  ///     on changes to types. (Use versioned type names to manage
  ///     breaking changes.)
  ///  
  ///   Schemes other than `http`, `https` (or the empty scheme) might be
  ///   used with implementation specific semantics.
  var typeURL: String = ""

  ///   Must be a valid serialized protocol buffer of the above specified type.
  var value: Data = Data()

  init() {}

  public mutating func _protoc_generated_decodeField<T: SwiftProtobuf.FieldDecoder>(setter: inout T, protoFieldNumber: Int) throws {
    switch protoFieldNumber {
    case 1: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: &typeURL)
    case 2: try setter.decodeSingularField(fieldType: SwiftProtobuf.ProtobufBytes.self, value: &value)
    default: break
    }
  }

  public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    if typeURL != "" {
      try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufString.self, value: typeURL, fieldNumber: 1)
    }
    if value != Data() {
      try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufBytes.self, value: value, fieldNumber: 2)
    }
  }

  public func _protoc_generated_isEqualTo(other: Google_Protobuf_Any) -> Bool {
    if typeURL != other.typeURL {return false}
    if value != other.value {return false}
    return true
  }
}
