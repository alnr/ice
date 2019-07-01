//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7b1
//
// <auto-generated>
//
// Generated from file `Router.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//

import Foundation
import PromiseKit

/// Traits for Slice interface `Router`.
public struct RouterTraits: SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Ice::Router"]
    public static let staticId = "::Ice::Router"
}

/// Traits for Slice interface `RouterFinder`.
public struct RouterFinderTraits: SliceTraits {
    public static let staticIds = ["::Ice::Object", "::Ice::RouterFinder"]
    public static let staticId = "::Ice::RouterFinder"
}

/// The Ice router interface. Routers can be set either globally with
/// Communicator.setDefaultRouter, or with ice_router on specific
/// proxies.
///
/// RouterPrx Methods:
///
///  - getClientProxy: Get the router's client proxy, i.e., the proxy to use for forwarding requests from the client to the router.
///
///  - getClientProxyAsync: Get the router's client proxy, i.e., the proxy to use for forwarding requests from the client to the router.
///
///  - getServerProxy: Get the router's server proxy, i.e., the proxy to use for forwarding requests from the server to the router.
///
///  - getServerProxyAsync: Get the router's server proxy, i.e., the proxy to use for forwarding requests from the server to the router.
///
///  - addProxies: Add new proxy information to the router's routing table.
///
///  - addProxiesAsync: Add new proxy information to the router's routing table.
public protocol RouterPrx: ObjectPrx {}

internal final class RouterPrxI: ObjectPrxI, RouterPrx {
    public override class func ice_staticId() -> Swift.String {
        return RouterTraits.staticId
    }
}

/// Casts a proxy to the requested type. This call contacts the server and verifies that the object
/// implements this type.
///
/// It will throw a local exception if a communication error occurs. You can optionally supply a
/// facet name and a context map.
///
/// - parameter prx: `Ice.ObjectPrx` - The proxy to be cast.
///
/// - parameter type: `RouterPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet.
///
/// - parameter context: `Ice.Context` The optional context dictionary for the remote invocation.
///
/// - returns: `RouterPrx` - A proxy with the requested type or nil if the objet does not
///   support this type.
///
/// - throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: ObjectPrx, type: RouterPrx.Protocol, facet: Swift.String? = nil, context: Context? = nil) throws -> RouterPrx? {
    return try RouterPrxI.checkedCast(prx: prx, facet: facet, context: context) as RouterPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - parameter prx: `Ice.ObjectPrx` The proxy to be cast.
///
/// - parameter type: `RouterPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet
///
/// - returns: `RouterPrx` - A proxy with the requested type
public func uncheckedCast(prx: ObjectPrx, type: RouterPrx.Protocol, facet: Swift.String? = nil) -> RouterPrx {
    return RouterPrxI.uncheckedCast(prx: prx, facet: facet) as RouterPrxI
}

/// Returns the Slice type id of the interface or class associated with this proxy type.
///
/// parameter type: `RouterPrx.Protocol` -  The proxy type to retrieve the type id.
///
/// returns: `String` - The type id of the interface or class associated with this proxy type.
public func ice_staticId(_ type: RouterPrx.Protocol) -> Swift.String {
    return RouterTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxy of type
/// `RouterPrx`.
public extension InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter type: `RouterPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `RouterPrx?` - The extracted proxy
    func read(_ type: RouterPrx.Protocol) throws -> RouterPrx? {
        return try read() as RouterPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter type: `RouterPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `RouterPrx` - The extracted proxy.
    func read(tag: Swift.Int32, type: RouterPrx.Protocol) throws -> RouterPrx? {
        return try read(tag: tag) as RouterPrxI?
    }
}

/// The Ice router interface. Routers can be set either globally with
/// Communicator.setDefaultRouter, or with ice_router on specific
/// proxies.
///
/// RouterPrx Methods:
///
///  - getClientProxy: Get the router's client proxy, i.e., the proxy to use for forwarding requests from the client to the router.
///
///  - getClientProxyAsync: Get the router's client proxy, i.e., the proxy to use for forwarding requests from the client to the router.
///
///  - getServerProxy: Get the router's server proxy, i.e., the proxy to use for forwarding requests from the server to the router.
///
///  - getServerProxyAsync: Get the router's server proxy, i.e., the proxy to use for forwarding requests from the server to the router.
///
///  - addProxies: Add new proxy information to the router's routing table.
///
///  - addProxiesAsync: Add new proxy information to the router's routing table.
public extension RouterPrx {
    /// Get the router's client proxy, i.e., the proxy to use for
    /// forwarding requests from the client to the router.
    ///
    /// If a null proxy is returned, the client will forward requests
    /// to the router's endpoints.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `(returnValue: ObjectPrx?, hasRoutingTable: Swift.Bool?)`:
    ///
    ///   - returnValue: `ObjectPrx?` - The router's client proxy.
    ///
    ///   - hasRoutingTable: `Swift.Bool?` - Indicates whether or not the router supports a routing
    /// table. If it is supported, the Ice runtime will call addProxies to populate the
    /// routing table. This out parameter is only supported starting with Ice 3.7.
    /// The Ice runtime assumes the router has a routing table if the optional is not
    /// set.
    func getClientProxy(context: Context? = nil) throws -> (returnValue: ObjectPrx?, hasRoutingTable: Swift.Bool?) {
        return try _impl._invoke(operation: "getClientProxy",
                                 mode: .Nonmutating,
                                 read: { istr in
                                     let iceP_returnValue: ObjectPrx? = try istr.read(ObjectPrx.self)
                                     let iceP_hasRoutingTable: Swift.Bool? = try istr.read(tag: 1)
                                     return (iceP_returnValue, iceP_hasRoutingTable)
                                 },
                                 context: context)
    }

    /// Get the router's client proxy, i.e., the proxy to use for
    /// forwarding requests from the client to the router.
    ///
    /// If a null proxy is returned, the client will forward requests
    /// to the router's endpoints.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - parameter sentOn: `Dispatch.DispatchQueue?` - Optional dispatch queue used to
    ///   dispatch sent callback, the default is to use `PromiseKit.conf.Q.return` queue.
    ///
    /// - parameter sentFlags: `Dispatch.DispatchWorkItemFlags?` - Optional dispatch flags used
    ///   to dispatch sent callback
    ///
    /// - parameter sent: `((Swift.Bool) -> Swift.Void)` - Optional sent callback.
    ///
    /// - returns: `PromiseKit.Promise<(returnValue: ObjectPrx?, hasRoutingTable: Swift.Bool?)>` - The result of the operation
    func getClientProxyAsync(context: Context? = nil, sentOn: Dispatch.DispatchQueue? = PromiseKit.conf.Q.return, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<(returnValue: ObjectPrx?, hasRoutingTable: Swift.Bool?)> {
        return _impl._invokeAsync(operation: "getClientProxy",
                                  mode: .Nonmutating,
                                  read: { istr in
                                      let iceP_returnValue: ObjectPrx? = try istr.read(ObjectPrx.self)
                                      let iceP_hasRoutingTable: Swift.Bool? = try istr.read(tag: 1)
                                      return (iceP_returnValue, iceP_hasRoutingTable)
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }

    /// Get the router's server proxy, i.e., the proxy to use for
    /// forwarding requests from the server to the router.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `ObjectPrx?` - The router's server proxy.
    func getServerProxy(context: Context? = nil) throws -> ObjectPrx? {
        return try _impl._invoke(operation: "getServerProxy",
                                 mode: .Nonmutating,
                                 read: { istr in
                                     let iceP_returnValue: ObjectPrx? = try istr.read(ObjectPrx.self)
                                     return iceP_returnValue
                                 },
                                 context: context)
    }

    /// Get the router's server proxy, i.e., the proxy to use for
    /// forwarding requests from the server to the router.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - parameter sentOn: `Dispatch.DispatchQueue?` - Optional dispatch queue used to
    ///   dispatch sent callback, the default is to use `PromiseKit.conf.Q.return` queue.
    ///
    /// - parameter sentFlags: `Dispatch.DispatchWorkItemFlags?` - Optional dispatch flags used
    ///   to dispatch sent callback
    ///
    /// - parameter sent: `((Swift.Bool) -> Swift.Void)` - Optional sent callback.
    ///
    /// - returns: `PromiseKit.Promise<ObjectPrx?>` - The result of the operation
    func getServerProxyAsync(context: Context? = nil, sentOn: Dispatch.DispatchQueue? = PromiseKit.conf.Q.return, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<ObjectPrx?> {
        return _impl._invokeAsync(operation: "getServerProxy",
                                  mode: .Nonmutating,
                                  read: { istr in
                                      let iceP_returnValue: ObjectPrx? = try istr.read(ObjectPrx.self)
                                      return iceP_returnValue
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }

    /// Add new proxy information to the router's routing table.
    ///
    /// - parameter _: `ObjectProxySeq` The proxies to add.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `ObjectProxySeq` - Proxies discarded by the router.
    func addProxies(_ iceP_proxies: ObjectProxySeq, context: Context? = nil) throws -> ObjectProxySeq {
        return try _impl._invoke(operation: "addProxies",
                                 mode: .Idempotent,
                                 write: { ostr in
                                     ObjectProxySeqHelper.write(to: ostr, value: iceP_proxies)
                                 },
                                 read: { istr in
                                     let iceP_returnValue: ObjectProxySeq = try ObjectProxySeqHelper.read(from: istr)
                                     return iceP_returnValue
                                 },
                                 context: context)
    }

    /// Add new proxy information to the router's routing table.
    ///
    /// - parameter _: `ObjectProxySeq` The proxies to add.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - parameter sentOn: `Dispatch.DispatchQueue?` - Optional dispatch queue used to
    ///   dispatch sent callback, the default is to use `PromiseKit.conf.Q.return` queue.
    ///
    /// - parameter sentFlags: `Dispatch.DispatchWorkItemFlags?` - Optional dispatch flags used
    ///   to dispatch sent callback
    ///
    /// - parameter sent: `((Swift.Bool) -> Swift.Void)` - Optional sent callback.
    ///
    /// - returns: `PromiseKit.Promise<ObjectProxySeq>` - The result of the operation
    func addProxiesAsync(_ iceP_proxies: ObjectProxySeq, context: Context? = nil, sentOn: Dispatch.DispatchQueue? = PromiseKit.conf.Q.return, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<ObjectProxySeq> {
        return _impl._invokeAsync(operation: "addProxies",
                                  mode: .Idempotent,
                                  write: { ostr in
                                      ObjectProxySeqHelper.write(to: ostr, value: iceP_proxies)
                                  },
                                  read: { istr in
                                      let iceP_returnValue: ObjectProxySeq = try ObjectProxySeqHelper.read(from: istr)
                                      return iceP_returnValue
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }
}

/// This inferface should be implemented by services implementing the
/// Ice::Router interface. It should be advertised through an Ice
/// object with the identity `Ice/RouterFinder'. This allows clients to
/// retrieve the router proxy with just the endpoint information of the
/// service.
///
/// RouterFinderPrx Methods:
///
///  - getRouter: Get the router proxy implemented by the process hosting this finder object.
///
///  - getRouterAsync: Get the router proxy implemented by the process hosting this finder object.
public protocol RouterFinderPrx: ObjectPrx {}

internal final class RouterFinderPrxI: ObjectPrxI, RouterFinderPrx {
    public override class func ice_staticId() -> Swift.String {
        return RouterFinderTraits.staticId
    }
}

/// Casts a proxy to the requested type. This call contacts the server and verifies that the object
/// implements this type.
///
/// It will throw a local exception if a communication error occurs. You can optionally supply a
/// facet name and a context map.
///
/// - parameter prx: `Ice.ObjectPrx` - The proxy to be cast.
///
/// - parameter type: `RouterFinderPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet.
///
/// - parameter context: `Ice.Context` The optional context dictionary for the remote invocation.
///
/// - returns: `RouterFinderPrx` - A proxy with the requested type or nil if the objet does not
///   support this type.
///
/// - throws: `Ice.LocalException` if a communication error occurs.
public func checkedCast(prx: ObjectPrx, type: RouterFinderPrx.Protocol, facet: Swift.String? = nil, context: Context? = nil) throws -> RouterFinderPrx? {
    return try RouterFinderPrxI.checkedCast(prx: prx, facet: facet, context: context) as RouterFinderPrxI?
}

/// Downcasts the given proxy to this type without contacting the remote server.
///
/// - parameter prx: `Ice.ObjectPrx` The proxy to be cast.
///
/// - parameter type: `RouterFinderPrx.Protocol` - The proxy type to cast to.
///
/// - parameter facet: `String` - The optional name of the desired facet
///
/// - returns: `RouterFinderPrx` - A proxy with the requested type
public func uncheckedCast(prx: ObjectPrx, type: RouterFinderPrx.Protocol, facet: Swift.String? = nil) -> RouterFinderPrx {
    return RouterFinderPrxI.uncheckedCast(prx: prx, facet: facet) as RouterFinderPrxI
}

/// Returns the Slice type id of the interface or class associated with this proxy type.
///
/// parameter type: `RouterFinderPrx.Protocol` -  The proxy type to retrieve the type id.
///
/// returns: `String` - The type id of the interface or class associated with this proxy type.
public func ice_staticId(_ type: RouterFinderPrx.Protocol) -> Swift.String {
    return RouterFinderTraits.staticId
}

/// Extension to `Ice.InputStream` class to support reading proxy of type
/// `RouterFinderPrx`.
public extension InputStream {
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter type: `RouterFinderPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `RouterFinderPrx?` - The extracted proxy
    func read(_ type: RouterFinderPrx.Protocol) throws -> RouterFinderPrx? {
        return try read() as RouterFinderPrxI?
    }
    /// Extracts a proxy from the stream. The stream must have been initialized with a communicator.
    ///
    /// - parameter tag: `Int32` - The numeric tag associated with the value.
    ///
    /// - parameter type: `RouterFinderPrx.Protocol` - The type of the proxy to be extracted.
    ///
    /// - returns: `RouterFinderPrx` - The extracted proxy.
    func read(tag: Swift.Int32, type: RouterFinderPrx.Protocol) throws -> RouterFinderPrx? {
        return try read(tag: tag) as RouterFinderPrxI?
    }
}

/// This inferface should be implemented by services implementing the
/// Ice::Router interface. It should be advertised through an Ice
/// object with the identity `Ice/RouterFinder'. This allows clients to
/// retrieve the router proxy with just the endpoint information of the
/// service.
///
/// RouterFinderPrx Methods:
///
///  - getRouter: Get the router proxy implemented by the process hosting this finder object.
///
///  - getRouterAsync: Get the router proxy implemented by the process hosting this finder object.
public extension RouterFinderPrx {
    /// Get the router proxy implemented by the process hosting this
    /// finder object. The proxy might point to several replicas.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - returns: `RouterPrx?` - The router proxy.
    func getRouter(context: Context? = nil) throws -> RouterPrx? {
        return try _impl._invoke(operation: "getRouter",
                                 mode: .Normal,
                                 read: { istr in
                                     let iceP_returnValue: RouterPrx? = try istr.read(RouterPrx.self)
                                     return iceP_returnValue
                                 },
                                 context: context)
    }

    /// Get the router proxy implemented by the process hosting this
    /// finder object. The proxy might point to several replicas.
    ///
    /// - parameter context: `Ice.Context` - Optional request context.
    ///
    /// - parameter sentOn: `Dispatch.DispatchQueue?` - Optional dispatch queue used to
    ///   dispatch sent callback, the default is to use `PromiseKit.conf.Q.return` queue.
    ///
    /// - parameter sentFlags: `Dispatch.DispatchWorkItemFlags?` - Optional dispatch flags used
    ///   to dispatch sent callback
    ///
    /// - parameter sent: `((Swift.Bool) -> Swift.Void)` - Optional sent callback.
    ///
    /// - returns: `PromiseKit.Promise<RouterPrx?>` - The result of the operation
    func getRouterAsync(context: Context? = nil, sentOn: Dispatch.DispatchQueue? = PromiseKit.conf.Q.return, sentFlags: Dispatch.DispatchWorkItemFlags? = nil, sent: ((Swift.Bool) -> Swift.Void)? = nil) -> PromiseKit.Promise<RouterPrx?> {
        return _impl._invokeAsync(operation: "getRouter",
                                  mode: .Normal,
                                  read: { istr in
                                      let iceP_returnValue: RouterPrx? = try istr.read(RouterPrx.self)
                                      return iceP_returnValue
                                  },
                                  context: context,
                                  sentOn: sentOn,
                                  sentFlags: sentFlags,
                                  sent: sent)
    }
}


/// Dispatcher for `Router` servants.
public struct RouterDisp: Disp {
    public let servant: Router
    private static let defaultObject = ObjectI<RouterTraits>()

    public init(_ servant: Router) {
        self.servant = servant
    }

    public func dispatch(request: Request, current: Current) throws {
        switch current.operation {
        case "addProxies":
            try servant._iceD_addProxies(incoming: request, current: current)
        case "getClientProxy":
            try servant._iceD_getClientProxy(incoming: request, current: current)
        case "getServerProxy":
            try servant._iceD_getServerProxy(incoming: request, current: current)
        case "ice_id":
            try (servant as? Object ?? RouterDisp.defaultObject)._iceD_ice_id(incoming: request, current: current)
        case "ice_ids":
            try (servant as? Object ?? RouterDisp.defaultObject)._iceD_ice_ids(incoming: request, current: current)
        case "ice_isA":
            try (servant as? Object ?? RouterDisp.defaultObject)._iceD_ice_isA(incoming: request, current: current)
        case "ice_ping":
            try (servant as? Object ?? RouterDisp.defaultObject)._iceD_ice_ping(incoming: request, current: current)
        default:
            throw OperationNotExistException(id: current.id, facet: current.facet, operation: current.operation)
        }
    }
}

/// The Ice router interface. Routers can be set either globally with
/// Communicator.setDefaultRouter, or with ice_router on specific
/// proxies.
public protocol Router {
    /// Get the router's client proxy, i.e., the proxy to use for
    /// forwarding requests from the client to the router.
    ///
    /// If a null proxy is returned, the client will forward requests
    /// to the router's endpoints.
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `(returnValue: ObjectPrx?, hasRoutingTable: Swift.Bool?)`:
    ///
    ///   - returnValue: `ObjectPrx?` - The router's client proxy.
    ///
    ///   - hasRoutingTable: `Swift.Bool?` - Indicates whether or not the router supports a routing
    /// table. If it is supported, the Ice runtime will call addProxies to populate the
    /// routing table. This out parameter is only supported starting with Ice 3.7.
    /// The Ice runtime assumes the router has a routing table if the optional is not
    /// set.
    func getClientProxy(current: Current) throws -> (returnValue: ObjectPrx?, hasRoutingTable: Swift.Bool?)

    /// Get the router's server proxy, i.e., the proxy to use for
    /// forwarding requests from the server to the router.
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `ObjectPrx?` - The router's server proxy.
    func getServerProxy(current: Current) throws -> ObjectPrx?

    /// Add new proxy information to the router's routing table.
    ///
    /// - parameter proxies: `ObjectProxySeq` The proxies to add.
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `ObjectProxySeq` - Proxies discarded by the router.
    func addProxies(proxies: ObjectProxySeq, current: Current) throws -> ObjectProxySeq
}


/// Dispatcher for `RouterFinder` servants.
public struct RouterFinderDisp: Disp {
    public let servant: RouterFinder
    private static let defaultObject = ObjectI<RouterFinderTraits>()

    public init(_ servant: RouterFinder) {
        self.servant = servant
    }

    public func dispatch(request: Request, current: Current) throws {
        switch current.operation {
        case "getRouter":
            try servant._iceD_getRouter(incoming: request, current: current)
        case "ice_id":
            try (servant as? Object ?? RouterFinderDisp.defaultObject)._iceD_ice_id(incoming: request, current: current)
        case "ice_ids":
            try (servant as? Object ?? RouterFinderDisp.defaultObject)._iceD_ice_ids(incoming: request, current: current)
        case "ice_isA":
            try (servant as? Object ?? RouterFinderDisp.defaultObject)._iceD_ice_isA(incoming: request, current: current)
        case "ice_ping":
            try (servant as? Object ?? RouterFinderDisp.defaultObject)._iceD_ice_ping(incoming: request, current: current)
        default:
            throw OperationNotExistException(id: current.id, facet: current.facet, operation: current.operation)
        }
    }
}

/// This inferface should be implemented by services implementing the
/// Ice::Router interface. It should be advertised through an Ice
/// object with the identity `Ice/RouterFinder'. This allows clients to
/// retrieve the router proxy with just the endpoint information of the
/// service.
public protocol RouterFinder {
    /// Get the router proxy implemented by the process hosting this
    /// finder object. The proxy might point to several replicas.
    ///
    /// - parameter current: `Ice.Current` - The Current object for the dispatch.
    ///
    /// - returns: `RouterPrx?` - The router proxy.
    func getRouter(current: Current) throws -> RouterPrx?
}

/// The Ice router interface. Routers can be set either globally with
/// Communicator.setDefaultRouter, or with ice_router on specific
/// proxies.
///
/// Router Methods:
///
///  - getClientProxy: Get the router's client proxy, i.e., the proxy to use for forwarding requests from the client to the router.
///
///  - getServerProxy: Get the router's server proxy, i.e., the proxy to use for forwarding requests from the server to the router.
///
///  - addProxies: Add new proxy information to the router's routing table.
public extension Router {
    func _iceD_getClientProxy(incoming inS: Incoming, current: Current) throws {
        try inS.readEmptyParams()

        let (iceP_returnValue, iceP_hasRoutingTable) = try self.getClientProxy(current: current)

        inS.write { ostr in
            ostr.write(iceP_returnValue)
            ostr.write(tag: 1, value: iceP_hasRoutingTable)
        }
    }

    func _iceD_getServerProxy(incoming inS: Incoming, current: Current) throws {
        try inS.readEmptyParams()

        let iceP_returnValue = try self.getServerProxy(current: current)

        inS.write { ostr in
            ostr.write(iceP_returnValue)
        }
    }

    func _iceD_addProxies(incoming inS: Incoming, current: Current) throws {
        let iceP_proxies: ObjectProxySeq = try inS.read { istr in
            let iceP_proxies: ObjectProxySeq = try ObjectProxySeqHelper.read(from: istr)
            return iceP_proxies
        }

        let iceP_returnValue = try self.addProxies(proxies: iceP_proxies, current: current)

        inS.write { ostr in
            ObjectProxySeqHelper.write(to: ostr, value: iceP_returnValue)
        }
    }
}

/// This inferface should be implemented by services implementing the
/// Ice::Router interface. It should be advertised through an Ice
/// object with the identity `Ice/RouterFinder'. This allows clients to
/// retrieve the router proxy with just the endpoint information of the
/// service.
///
/// RouterFinder Methods:
///
///  - getRouter: Get the router proxy implemented by the process hosting this finder object.
public extension RouterFinder {
    func _iceD_getRouter(incoming inS: Incoming, current: Current) throws {
        try inS.readEmptyParams()

        let iceP_returnValue = try self.getRouter(current: current)

        inS.write { ostr in
            ostr.write(iceP_returnValue)
        }
    }
}
