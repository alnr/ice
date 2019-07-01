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

#ifndef ICE_API_EXPORTS
#   define ICE_API_EXPORTS
#endif
#include <Ice/Router.h>
#include <IceUtil/PushDisableWarnings.h>
#include <Ice/LocalException.h>
#include <Ice/ValueFactory.h>
#include <Ice/OutgoingAsync.h>
#include <Ice/InputStream.h>
#include <Ice/OutputStream.h>
#include <IceUtil/PopDisableWarnings.h>

#if defined(_MSC_VER)
#   pragma warning(disable:4458) // declaration of ... hides class member
#elif defined(__clang__)
#   pragma clang diagnostic ignored "-Wshadow"
#elif defined(__GNUC__)
#   pragma GCC diagnostic ignored "-Wshadow"
#endif

#ifndef ICE_IGNORE_VERSION
#   if ICE_INT_VERSION  != 30761
#       error Ice version mismatch: an exact match is required for beta generated code
#   endif
#endif

#ifdef ICE_CPP11_MAPPING // C++11 mapping

namespace
{

const ::std::string iceC_Ice_Router_ids[2] =
{
    "::Ice::Object",
    "::Ice::Router"
};
const ::std::string iceC_Ice_Router_ops[] =
{
    "addProxies",
    "getClientProxy",
    "getServerProxy",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping"
};
const ::std::string iceC_Ice_Router_getClientProxy_name = "getClientProxy";
const ::std::string iceC_Ice_Router_getServerProxy_name = "getServerProxy";
const ::std::string iceC_Ice_Router_addProxies_name = "addProxies";

const ::std::string iceC_Ice_RouterFinder_ids[2] =
{
    "::Ice::Object",
    "::Ice::RouterFinder"
};
const ::std::string iceC_Ice_RouterFinder_ops[] =
{
    "getRouter",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping"
};
const ::std::string iceC_Ice_RouterFinder_getRouter_name = "getRouter";

}

bool
Ice::Router::ice_isA(::std::string s, const Current&) const
{
    return ::std::binary_search(iceC_Ice_Router_ids, iceC_Ice_Router_ids + 2, s);
}

::std::vector<::std::string>
Ice::Router::ice_ids(const Current&) const
{
    return ::std::vector<::std::string>(&iceC_Ice_Router_ids[0], &iceC_Ice_Router_ids[2]);
}

::std::string
Ice::Router::ice_id(const Current&) const
{
    return ice_staticId();
}

const ::std::string&
Ice::Router::ice_staticId()
{
    static const ::std::string typeId = "::Ice::Router";
    return typeId;
}

/// \cond INTERNAL
bool
Ice::Router::_iceD_getClientProxy(::IceInternal::Incoming& inS, const Current& current) const
{
    _iceCheckMode(::Ice::OperationMode::Idempotent, current.mode);
    inS.readEmptyParams();
    Ice::optional<bool> iceP_hasRoutingTable;
    ::std::shared_ptr<ObjectPrx> ret = this->getClientProxy(iceP_hasRoutingTable, current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    ostr->writeAll({1}, iceP_hasRoutingTable);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Ice::Router::_iceD_getServerProxy(::IceInternal::Incoming& inS, const Current& current) const
{
    _iceCheckMode(::Ice::OperationMode::Idempotent, current.mode);
    inS.readEmptyParams();
    ::std::shared_ptr<ObjectPrx> ret = this->getServerProxy(current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Ice::Router::_iceD_addProxies(::IceInternal::Incoming& inS, const Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Idempotent, current.mode);
    auto istr = inS.startReadParams();
    ObjectProxySeq iceP_proxies;
    istr->readAll(iceP_proxies);
    inS.endReadParams();
    ObjectProxySeq ret = this->addProxies(::std::move(iceP_proxies), current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Ice::Router::_iceDispatch(::IceInternal::Incoming& in, const Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Ice_Router_ops, iceC_Ice_Router_ops + 7, current.operation);
    if(r.first == r.second)
    {
        throw OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Ice_Router_ops)
    {
        case 0:
        {
            return _iceD_addProxies(in, current);
        }
        case 1:
        {
            return _iceD_getClientProxy(in, current);
        }
        case 2:
        {
            return _iceD_getServerProxy(in, current);
        }
        case 3:
        {
            return _iceD_ice_id(in, current);
        }
        case 4:
        {
            return _iceD_ice_ids(in, current);
        }
        case 5:
        {
            return _iceD_ice_isA(in, current);
        }
        case 6:
        {
            return _iceD_ice_ping(in, current);
        }
        default:
        {
            assert(false);
            throw OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
        }
    }
}
/// \endcond

bool
Ice::RouterFinder::ice_isA(::std::string s, const Current&) const
{
    return ::std::binary_search(iceC_Ice_RouterFinder_ids, iceC_Ice_RouterFinder_ids + 2, s);
}

::std::vector<::std::string>
Ice::RouterFinder::ice_ids(const Current&) const
{
    return ::std::vector<::std::string>(&iceC_Ice_RouterFinder_ids[0], &iceC_Ice_RouterFinder_ids[2]);
}

::std::string
Ice::RouterFinder::ice_id(const Current&) const
{
    return ice_staticId();
}

const ::std::string&
Ice::RouterFinder::ice_staticId()
{
    static const ::std::string typeId = "::Ice::RouterFinder";
    return typeId;
}

/// \cond INTERNAL
bool
Ice::RouterFinder::_iceD_getRouter(::IceInternal::Incoming& inS, const Current& current)
{
    _iceCheckMode(::Ice::OperationMode::Normal, current.mode);
    inS.readEmptyParams();
    ::std::shared_ptr<RouterPrx> ret = this->getRouter(current);
    auto ostr = inS.startWriteParams();
    ostr->writeAll(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Ice::RouterFinder::_iceDispatch(::IceInternal::Incoming& in, const Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Ice_RouterFinder_ops, iceC_Ice_RouterFinder_ops + 5, current.operation);
    if(r.first == r.second)
    {
        throw OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Ice_RouterFinder_ops)
    {
        case 0:
        {
            return _iceD_getRouter(in, current);
        }
        case 1:
        {
            return _iceD_ice_id(in, current);
        }
        case 2:
        {
            return _iceD_ice_ids(in, current);
        }
        case 3:
        {
            return _iceD_ice_isA(in, current);
        }
        case 4:
        {
            return _iceD_ice_ping(in, current);
        }
        default:
        {
            assert(false);
            throw OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
        }
    }
}
/// \endcond

/// \cond INTERNAL
void
Ice::RouterPrx::_iceI_getClientProxy(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<Router::GetClientProxyResult>>& outAsync, const Context& context)
{
    _checkTwowayOnly(iceC_Ice_Router_getClientProxy_name);
    outAsync->invoke(iceC_Ice_Router_getClientProxy_name, ::Ice::OperationMode::Nonmutating, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr,
        [](InputStream* istr)
        {
            Router::GetClientProxyResult v;
            istr->readAll(v.returnValue);
            istr->readAll({1}, v.hasRoutingTable);
            return v;
        });
}
/// \endcond

/// \cond INTERNAL
void
Ice::RouterPrx::_iceI_getServerProxy(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::shared_ptr<ObjectPrx>>>& outAsync, const Context& context)
{
    _checkTwowayOnly(iceC_Ice_Router_getServerProxy_name);
    outAsync->invoke(iceC_Ice_Router_getServerProxy_name, ::Ice::OperationMode::Nonmutating, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
void
Ice::RouterPrx::_iceI_addProxies(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<ObjectProxySeq>>& outAsync, const ObjectProxySeq& iceP_proxies, const Context& context)
{
    _checkTwowayOnly(iceC_Ice_Router_addProxies_name);
    outAsync->invoke(iceC_Ice_Router_addProxies_name, ::Ice::OperationMode::Idempotent, ::Ice::FormatType::DefaultFormat, context,
        [&](OutputStream* ostr)
        {
            ostr->writeAll(iceP_proxies);
        },
        nullptr);
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
Ice::RouterPrx::_newInstance() const
{
    return ::IceInternal::createProxy<RouterPrx>();
}
/// \endcond

const ::std::string&
Ice::RouterPrx::ice_staticId()
{
    return Router::ice_staticId();
}

/// \cond INTERNAL
void
Ice::RouterFinderPrx::_iceI_getRouter(const ::std::shared_ptr<::IceInternal::OutgoingAsyncT<::std::shared_ptr<RouterPrx>>>& outAsync, const Context& context)
{
    _checkTwowayOnly(iceC_Ice_RouterFinder_getRouter_name);
    outAsync->invoke(iceC_Ice_RouterFinder_getRouter_name, ::Ice::OperationMode::Normal, ::Ice::FormatType::DefaultFormat, context,
        nullptr,
        nullptr);
}
/// \endcond

/// \cond INTERNAL
::std::shared_ptr<::Ice::ObjectPrx>
Ice::RouterFinderPrx::_newInstance() const
{
    return ::IceInternal::createProxy<RouterFinderPrx>();
}
/// \endcond

const ::std::string&
Ice::RouterFinderPrx::ice_staticId()
{
    return RouterFinder::ice_staticId();
}

#else // C++98 mapping

namespace
{

const ::std::string iceC_Ice_Router_getClientProxy_name = "getClientProxy";

const ::std::string iceC_Ice_Router_getServerProxy_name = "getServerProxy";

const ::std::string iceC_Ice_Router_addProxies_name = "addProxies";

const ::std::string iceC_Ice_RouterFinder_getRouter_name = "getRouter";

}

/// \cond INTERNAL
ICE_API ::IceProxy::Ice::Object* ::IceProxy::Ice::upCast(Router* p) { return p; }

void
::IceProxy::Ice::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< Router>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new Router;
        v->_copyFrom(proxy);
    }
}
/// \endcond

::Ice::AsyncResultPtr
IceProxy::Ice::Router::_iceI_begin_getClientProxy(const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Ice_Router_getClientProxy_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Ice_Router_getClientProxy_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Ice_Router_getClientProxy_name, ::Ice::Nonmutating, context);
        result->writeEmptyParams();
        result->invoke(iceC_Ice_Router_getClientProxy_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

::Ice::ObjectPrx
IceProxy::Ice::Router::end_getClientProxy(IceUtil::Optional<bool>& iceP_hasRoutingTable, const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Ice_Router_getClientProxy_name);
    ::Ice::ObjectPrx ret;
    if(!result->_waitForResponse())
    {
        try
        {
            result->_throwUserException();
        }
        catch(const ::Ice::UserException& ex)
        {
            throw ::Ice::UnknownUserException(__FILE__, __LINE__, ex.ice_id());
        }
    }
    ::Ice::InputStream* istr = result->_startReadParams();
    istr->read(ret);
    istr->read(1, iceP_hasRoutingTable);
    result->_endReadParams();
    return ret;
}

void IceProxy::Ice::Router::_iceI_end_getClientProxy(IceUtil::Optional<bool>& iceP_hasRoutingTable, ::Ice::ObjectPrxPtr& ret, const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Ice_Router_getClientProxy_name);
    if(!result->_waitForResponse())
    {
        try
        {
            result->_throwUserException();
        }
        catch(const ::Ice::UserException& ex)
        {
            throw ::Ice::UnknownUserException(__FILE__, __LINE__, ex.ice_id());
        }
    }
    ::Ice::InputStream* istr = result->_startReadParams();
    istr->read(ret);
    istr->read(1, iceP_hasRoutingTable);
    result->_endReadParams();
}

::Ice::AsyncResultPtr
IceProxy::Ice::Router::_iceI_begin_getServerProxy(const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Ice_Router_getServerProxy_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Ice_Router_getServerProxy_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Ice_Router_getServerProxy_name, ::Ice::Nonmutating, context);
        result->writeEmptyParams();
        result->invoke(iceC_Ice_Router_getServerProxy_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

::Ice::ObjectPrx
IceProxy::Ice::Router::end_getServerProxy(const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Ice_Router_getServerProxy_name);
    ::Ice::ObjectPrx ret;
    if(!result->_waitForResponse())
    {
        try
        {
            result->_throwUserException();
        }
        catch(const ::Ice::UserException& ex)
        {
            throw ::Ice::UnknownUserException(__FILE__, __LINE__, ex.ice_id());
        }
    }
    ::Ice::InputStream* istr = result->_startReadParams();
    istr->read(ret);
    result->_endReadParams();
    return ret;
}

::Ice::AsyncResultPtr
IceProxy::Ice::Router::_iceI_begin_addProxies(const ::Ice::ObjectProxySeq& iceP_proxies, const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Ice_Router_addProxies_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Ice_Router_addProxies_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Ice_Router_addProxies_name, ::Ice::Idempotent, context);
        ::Ice::OutputStream* ostr = result->startWriteParams(::Ice::DefaultFormat);
        ostr->write(iceP_proxies);
        result->endWriteParams();
        result->invoke(iceC_Ice_Router_addProxies_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

::Ice::ObjectProxySeq
IceProxy::Ice::Router::end_addProxies(const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Ice_Router_addProxies_name);
    ::Ice::ObjectProxySeq ret;
    if(!result->_waitForResponse())
    {
        try
        {
            result->_throwUserException();
        }
        catch(const ::Ice::UserException& ex)
        {
            throw ::Ice::UnknownUserException(__FILE__, __LINE__, ex.ice_id());
        }
    }
    ::Ice::InputStream* istr = result->_startReadParams();
    istr->read(ret);
    result->_endReadParams();
    return ret;
}

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Ice::Router::_newInstance() const
{
    return new Router;
}
/// \endcond

const ::std::string&
IceProxy::Ice::Router::ice_staticId()
{
    return ::Ice::Router::ice_staticId();
}

/// \cond INTERNAL
ICE_API ::IceProxy::Ice::Object* ::IceProxy::Ice::upCast(RouterFinder* p) { return p; }

void
::IceProxy::Ice::_readProxy(::Ice::InputStream* istr, ::IceInternal::ProxyHandle< RouterFinder>& v)
{
    ::Ice::ObjectPrx proxy;
    istr->read(proxy);
    if(!proxy)
    {
        v = 0;
    }
    else
    {
        v = new RouterFinder;
        v->_copyFrom(proxy);
    }
}
/// \endcond

::Ice::AsyncResultPtr
IceProxy::Ice::RouterFinder::_iceI_begin_getRouter(const ::Ice::Context& context, const ::IceInternal::CallbackBasePtr& del, const ::Ice::LocalObjectPtr& cookie, bool sync)
{
    _checkTwowayOnly(iceC_Ice_RouterFinder_getRouter_name, sync);
    ::IceInternal::OutgoingAsyncPtr result = new ::IceInternal::CallbackOutgoing(this, iceC_Ice_RouterFinder_getRouter_name, del, cookie, sync);
    try
    {
        result->prepare(iceC_Ice_RouterFinder_getRouter_name, ::Ice::Normal, context);
        result->writeEmptyParams();
        result->invoke(iceC_Ice_RouterFinder_getRouter_name);
    }
    catch(const ::Ice::Exception& ex)
    {
        result->abort(ex);
    }
    return result;
}

::Ice::RouterPrx
IceProxy::Ice::RouterFinder::end_getRouter(const ::Ice::AsyncResultPtr& result)
{
    ::Ice::AsyncResult::_check(result, this, iceC_Ice_RouterFinder_getRouter_name);
    ::Ice::RouterPrx ret;
    if(!result->_waitForResponse())
    {
        try
        {
            result->_throwUserException();
        }
        catch(const ::Ice::UserException& ex)
        {
            throw ::Ice::UnknownUserException(__FILE__, __LINE__, ex.ice_id());
        }
    }
    ::Ice::InputStream* istr = result->_startReadParams();
    istr->read(ret);
    result->_endReadParams();
    return ret;
}

/// \cond INTERNAL
::IceProxy::Ice::Object*
IceProxy::Ice::RouterFinder::_newInstance() const
{
    return new RouterFinder;
}
/// \endcond

const ::std::string&
IceProxy::Ice::RouterFinder::ice_staticId()
{
    return ::Ice::RouterFinder::ice_staticId();
}

Ice::Router::~Router()
{
}

/// \cond INTERNAL
ICE_API ::Ice::Object* Ice::upCast(Router* p) { return p; }

/// \endcond

namespace
{
const ::std::string iceC_Ice_Router_ids[2] =
{
    "::Ice::Object",
    "::Ice::Router"
};

}

bool
Ice::Router::ice_isA(const ::std::string& s, const Current&) const
{
    return ::std::binary_search(iceC_Ice_Router_ids, iceC_Ice_Router_ids + 2, s);
}

::std::vector< ::std::string>
Ice::Router::ice_ids(const Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Ice_Router_ids[0], &iceC_Ice_Router_ids[2]);
}

const ::std::string&
Ice::Router::ice_id(const Current&) const
{
    return ice_staticId();
}

const ::std::string&
Ice::Router::ice_staticId()
{
#ifdef ICE_HAS_THREAD_SAFE_LOCAL_STATIC
    static const ::std::string typeId = "::Ice::Router";
    return typeId;
#else
    return iceC_Ice_Router_ids[1];
#endif
}

/// \cond INTERNAL
bool
Ice::Router::_iceD_getClientProxy(::IceInternal::Incoming& inS, const Current& current) const
{
    _iceCheckMode(::Ice::Idempotent, current.mode);
    inS.readEmptyParams();
    IceUtil::Optional<bool> iceP_hasRoutingTable;
    ObjectPrx ret = this->getClientProxy(iceP_hasRoutingTable, current);
    OutputStream* ostr = inS.startWriteParams();
    ostr->write(ret);
    ostr->write(1, iceP_hasRoutingTable);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Ice::Router::_iceD_getServerProxy(::IceInternal::Incoming& inS, const Current& current) const
{
    _iceCheckMode(::Ice::Idempotent, current.mode);
    inS.readEmptyParams();
    ObjectPrx ret = this->getServerProxy(current);
    OutputStream* ostr = inS.startWriteParams();
    ostr->write(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

/// \cond INTERNAL
bool
Ice::Router::_iceD_addProxies(::IceInternal::Incoming& inS, const Current& current)
{
    _iceCheckMode(::Ice::Idempotent, current.mode);
    InputStream* istr = inS.startReadParams();
    ObjectProxySeq iceP_proxies;
    istr->read(iceP_proxies);
    inS.endReadParams();
    ObjectProxySeq ret = this->addProxies(iceP_proxies, current);
    OutputStream* ostr = inS.startWriteParams();
    ostr->write(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

namespace
{
const ::std::string iceC_Ice_Router_all[] =
{
    "addProxies",
    "getClientProxy",
    "getServerProxy",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping"
};

}

/// \cond INTERNAL
bool
Ice::Router::_iceDispatch(::IceInternal::Incoming& in, const Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Ice_Router_all, iceC_Ice_Router_all + 7, current.operation);
    if(r.first == r.second)
    {
        throw OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Ice_Router_all)
    {
        case 0:
        {
            return _iceD_addProxies(in, current);
        }
        case 1:
        {
            return _iceD_getClientProxy(in, current);
        }
        case 2:
        {
            return _iceD_getServerProxy(in, current);
        }
        case 3:
        {
            return _iceD_ice_id(in, current);
        }
        case 4:
        {
            return _iceD_ice_ids(in, current);
        }
        case 5:
        {
            return _iceD_ice_isA(in, current);
        }
        case 6:
        {
            return _iceD_ice_ping(in, current);
        }
        default:
        {
            assert(false);
            throw OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
        }
    }
}
/// \endcond

/// \cond STREAM
void
Ice::Router::_iceWriteImpl(OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    StreamWriter< Router, OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Ice::Router::_iceReadImpl(InputStream* istr)
{
    istr->startSlice();
    StreamReader< Router, InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
void
Ice::_icePatchObjectPtr(RouterPtr& handle, const ObjectPtr& v)
{
    handle = RouterPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(Router::ice_staticId(), v);
    }
}
/// \endcond

Ice::RouterFinder::~RouterFinder()
{
}

/// \cond INTERNAL
ICE_API ::Ice::Object* Ice::upCast(RouterFinder* p) { return p; }

/// \endcond

namespace
{
const ::std::string iceC_Ice_RouterFinder_ids[2] =
{
    "::Ice::Object",
    "::Ice::RouterFinder"
};

}

bool
Ice::RouterFinder::ice_isA(const ::std::string& s, const Current&) const
{
    return ::std::binary_search(iceC_Ice_RouterFinder_ids, iceC_Ice_RouterFinder_ids + 2, s);
}

::std::vector< ::std::string>
Ice::RouterFinder::ice_ids(const Current&) const
{
    return ::std::vector< ::std::string>(&iceC_Ice_RouterFinder_ids[0], &iceC_Ice_RouterFinder_ids[2]);
}

const ::std::string&
Ice::RouterFinder::ice_id(const Current&) const
{
    return ice_staticId();
}

const ::std::string&
Ice::RouterFinder::ice_staticId()
{
#ifdef ICE_HAS_THREAD_SAFE_LOCAL_STATIC
    static const ::std::string typeId = "::Ice::RouterFinder";
    return typeId;
#else
    return iceC_Ice_RouterFinder_ids[1];
#endif
}

/// \cond INTERNAL
bool
Ice::RouterFinder::_iceD_getRouter(::IceInternal::Incoming& inS, const Current& current)
{
    _iceCheckMode(::Ice::Normal, current.mode);
    inS.readEmptyParams();
    RouterPrx ret = this->getRouter(current);
    OutputStream* ostr = inS.startWriteParams();
    ostr->write(ret);
    inS.endWriteParams();
    return true;
}
/// \endcond

namespace
{
const ::std::string iceC_Ice_RouterFinder_all[] =
{
    "getRouter",
    "ice_id",
    "ice_ids",
    "ice_isA",
    "ice_ping"
};

}

/// \cond INTERNAL
bool
Ice::RouterFinder::_iceDispatch(::IceInternal::Incoming& in, const Current& current)
{
    ::std::pair<const ::std::string*, const ::std::string*> r = ::std::equal_range(iceC_Ice_RouterFinder_all, iceC_Ice_RouterFinder_all + 5, current.operation);
    if(r.first == r.second)
    {
        throw OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
    }

    switch(r.first - iceC_Ice_RouterFinder_all)
    {
        case 0:
        {
            return _iceD_getRouter(in, current);
        }
        case 1:
        {
            return _iceD_ice_id(in, current);
        }
        case 2:
        {
            return _iceD_ice_ids(in, current);
        }
        case 3:
        {
            return _iceD_ice_isA(in, current);
        }
        case 4:
        {
            return _iceD_ice_ping(in, current);
        }
        default:
        {
            assert(false);
            throw OperationNotExistException(__FILE__, __LINE__, current.id, current.facet, current.operation);
        }
    }
}
/// \endcond

/// \cond STREAM
void
Ice::RouterFinder::_iceWriteImpl(OutputStream* ostr) const
{
    ostr->startSlice(ice_staticId(), -1, true);
    StreamWriter< RouterFinder, OutputStream>::write(ostr, *this);
    ostr->endSlice();
}

void
Ice::RouterFinder::_iceReadImpl(InputStream* istr)
{
    istr->startSlice();
    StreamReader< RouterFinder, InputStream>::read(istr, *this);
    istr->endSlice();
}
/// \endcond

/// \cond INTERNAL
void
Ice::_icePatchObjectPtr(RouterFinderPtr& handle, const ObjectPtr& v)
{
    handle = RouterFinderPtr::dynamicCast(v);
    if(v && !handle)
    {
        IceInternal::Ex::throwUOE(RouterFinder::ice_staticId(), v);
    }
}
/// \endcond

namespace Ice
{
}

#endif
