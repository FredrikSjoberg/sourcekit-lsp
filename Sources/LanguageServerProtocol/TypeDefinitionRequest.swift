//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2019 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

/// Request to find the type definition(s) of the symbol at the given location.
///
/// Looks up the symbol at the given position and returns a list of all type definitions of
/// that symbol across the whole workspace.
///
/// Servers that provide type definition lookup should set the`typeDefinitionProvider` server capability.
///
/// - Parameters:
///   - textDocument: The document in which the lookup was invoked.
///   - position: The specific document location at which to perform the symbol lookup.
///
/// - Returns: The location of the type definition(s).
public struct TypeDefinitionRequest: TextDocumentRequest, Hashable {
  public static let method: String = "textDocument/typeDefinition"
  public typealias Response = [Location]

  /// The document in which the lookup was invoked.
  public var textDocument: TextDocumentIdentifier

  /// The specific document location at which to perform the symbol lookup.
  public var position: Position
}
