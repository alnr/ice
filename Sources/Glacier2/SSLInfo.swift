//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7b1
//
// <auto-generated>
//
// Generated from file `SSLInfo.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

import Foundation
import Ice

/// Information taken from an SSL connection used for permissions
/// verification.
public struct SSLInfo: Swift.Hashable {
    /// The remote host.
    public var remoteHost: Swift.String = ""
    /// The remote port.
    public var remotePort: Swift.Int32 = 0
    /// The router's host.
    public var localHost: Swift.String = ""
    /// The router's port.
    public var localPort: Swift.Int32 = 0
    /// The negotiated cipher suite.
    public var cipher: Swift.String = ""
    /// The certificate chain.
    public var certs: Ice.StringSeq = Ice.StringSeq()

    public init() {}

    public init(remoteHost: Swift.String, remotePort: Swift.Int32, localHost: Swift.String, localPort: Swift.Int32, cipher: Swift.String, certs: Ice.StringSeq) {
        self.remoteHost = remoteHost
        self.remotePort = remotePort
        self.localHost = localHost
        self.localPort = localPort
        self.cipher = cipher
        self.certs = certs
    }
}

/// An `Ice.InputStream` extension to read `SSLInfo` structured values from the stream.
public extension Ice.InputStream {
    /// Read a `SSLInfo` structured value from the stream.
    ///
    /// - returns: `SSLInfo` - The structured value read from the stream.
    func read() throws -> SSLInfo {
        var v = SSLInfo()
        v.remoteHost = try self.read()
        v.remotePort = try self.read()
        v.localHost = try self.read()
        v.localPort = try self.read()
        v.cipher = try self.read()
        v.certs = try self.read()
        return v
    }

    /// Read an optional `SSLInfo?` structured value from the stream.
    ///
    /// - parameter tag: `Swift.Int32` - The numeric tag associated with the value.
    ///
    /// - returns: `SSLInfo?` - The structured value read from the stream.
    func read(tag: Swift.Int32) throws -> SSLInfo? {
        guard try readOptional(tag: tag, expectedFormat: .FSize) else {
            return nil
        }
        try skip(4)
        return try read() as SSLInfo
    }
}

/// An `Ice.OutputStream` extension to write `SSLInfo` structured values from the stream.
public extension Ice.OutputStream {
    /// Write a `SSLInfo` structured value to the stream.
    ///
    /// - parameter _: `SSLInfo` - The value to write to the stream.
    func write(_ v: SSLInfo) {
        self.write(v.remoteHost)
        self.write(v.remotePort)
        self.write(v.localHost)
        self.write(v.localPort)
        self.write(v.cipher)
        self.write(v.certs)
    }

    /// Write an optional `SSLInfo?` structured value to the stream.
    ///
    /// - parameter tag: `Swift.Int32` - The numeric tag associated with the value.
    ///
    /// - parameter value: `SSLInfo?` - The value to write to the stream.
    func write(tag: Swift.Int32, value: SSLInfo?) {
        if let v = value {
            if writeOptional(tag: tag, format: .FSize) {
                let pos = startSize()
                write(v)
                endSize(position: pos)
            }
        }
    }
}
