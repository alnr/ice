// **********************************************************************
//
// Copyright (c) 2003-2017 ZeroC, Inc. All rights reserved.
//
// This copy of Ice is licensed to you under the terms described in the
// ICE_LICENSE file included in this distribution.
//
// **********************************************************************

#pragma once

[["ice-prefix", "cpp:header-ext:h", "cpp:dll-export:ICEGRID_API", "cpp:doxygen:include:IceGrid/IceGrid.h", "objc:header-dir:objc", "objc:dll-export:ICEGRID_API", "js:ice-build", "python:pkgdir:IceGrid"]]
[["cpp:include:IceGrid/Config.h"]]

#include <Glacier2/Session.ice>
#include <IceGrid/Exception.ice>

#ifndef __SLICE2JAVA_COMPAT__
[["java:package:com.zeroc"]]
#endif

["objc:prefix:ICEGRID"]
module IceGrid
{

/**
 *
 * A session object is used by IceGrid clients to allocate and
 * release objects. Client sessions are created either via the
 * {@link Registry} object or via the registry client <tt>SessionManager</tt>
 * object.
 *
 * @see Registry
 *
 **/
interface Session extends Glacier2::Session
{
    /**
     *
     * Keep the session alive. Clients should call this operation
     * regularly to prevent the server from reaping the session.
     *
     * @see Registry#getSessionTimeout
     *
     **/
    idempotent void keepAlive();

    /**
     *
     * Allocate an object. Depending on the allocation timeout, this
     * operation might hang until the object is available or until the
     * timeout is reached.
     *
     * @param id The identity of the object to allocate.
     *
     * @return The proxy of the allocated object.
     *
     * @throws ObjectNotRegisteredException Raised if the object with
     * the given identity is not registered with the registry.
     *
     * @throws AllocationException Raised if the object can't be
     * allocated.
     *
     * @see #setAllocationTimeout
     * @see #releaseObject
     *
     **/
    ["amd"] Object* allocateObjectById(Ice::Identity id)
        throws ObjectNotRegisteredException, AllocationException;

    /**
     *
     * Allocate an object with the given type. Depending on the
     * allocation timeout, this operation can block until an object
     * becomes available or until the timeout is reached.
     *
     * @param type The type of the object.
     *
     * @return The proxy of the allocated object.
     *
     * @throws AllocationException Raised if the object could not be allocated.
     *
     * @see #setAllocationTimeout
     * @see #releaseObject
     *
     **/
    ["amd"] Object* allocateObjectByType(string type)
        throws AllocationException;

    /**
     *
     * Release an object that was allocated using <tt>allocateObjectById</tt> or
     * <tt>allocateObjectByType</tt>.
     *
     * @param id The identity of the object to release.
     *
     * @throws ObjectNotRegisteredException Raised if the object with
     * the given identity is not registered with the registry.
     *
     * @throws AllocationException Raised if the given object can't be
     * released. This might happen if the object isn't allocatable or
     * isn't allocated by the session.
     *
     **/
    void releaseObject(Ice::Identity id)
        throws ObjectNotRegisteredException, AllocationException;

    /**
     *
     * Set the allocation timeout. If no objects are available for an
     * allocation request, a call to <tt>allocateObjectById</tt> or
     * <tt>allocateObjectByType</tt> will block for the duration of this
     * timeout.
     *
     * @param timeout The timeout in milliseconds.
     *
     **/
    idempotent void setAllocationTimeout(int timeout);
}

}
