#
# Copyright (c) ZeroC, Inc. All rights reserved.
#

import sys, os
from Util import *
from Component import component

class IceBox(ProcessFromBinDir, Server):

    def __init__(self, configFile=None, *args, **kargs):
        Server.__init__(self, *args, **kargs)
        self.configFile = configFile

    def setup(self, current):
        mapping = self.getMapping(current)

        #
        # If running IceBox tests with non default framweork we need to generate a custom config
        # file.
        #
        if self.configFile:
            if isinstance(mapping, CSharpMapping) and (current.config.dotnetcore or current.config.framework):
                configFile = self.configFile.format(testdir=current.testsuite.getPath())
                with open(configFile, 'r') as source:
                    framework = mapping.getTargetFramework(current)
                    libframework = mapping.getLibTargetFramework(current)
                    newConfigFile = "{}.{}".format(configFile, framework)
                    with open(newConfigFile, 'w') as target:
                        for line in source.readlines():
                            if current.config.framework == "net6.0":
                                line = line.replace("\\net45\\", "\\net6.0\\")
                            elif current.config.dotnetcore:
                                line = line.replace("\\net45\\", "\\netstandard2.0\\{0}\\".format(libframework))
                            target.write(line)
                        current.files.append(newConfigFile)

    def getExe(self, current):
        mapping = self.getMapping(current)
        if isinstance(mapping, JavaCompatMapping):
            return "IceBox.Server"
        elif isinstance(mapping, JavaMapping):
            return "com.zeroc.IceBox.Server"
        elif isinstance(mapping, CSharpMapping):
            return "iceboxnet"
        else:
            name = "icebox"
            if isinstance(platform, Linux) and \
               platform.getLinuxId() in ["centos", "rhel", "fedora"] and \
               current.config.buildPlatform == "x86":
                name += "32" # Multilib platform
            if isinstance(platform, AIX) and \
               current.config.buildPlatform == "ppc":
                name += "_32"
            if current.config.cpp11:
                name += "++11"
            return name

    def getEffectiveArgs(self, current, args):
        args = Server.getEffectiveArgs(self, current, args)
        if self.configFile:
            mapping = self.getMapping(current)
            if isinstance(mapping, CSharpMapping) and (current.config.dotnetcore or current.config.framework):
                args.append("--Ice.Config={0}.{1}".format(self.configFile, mapping.getTargetFramework(current)))
            else:
                args.append("--Ice.Config={0}".format(self.configFile))
        return args

class IceBoxAdmin(ProcessFromBinDir, ProcessIsReleaseOnly, Client):

    def getMapping(self, current):
        # IceBox admin is only provided with the C++/Java, not C#
        mapping = Client.getMapping(self, current)
        if isinstance(mapping, CppMapping) or isinstance(mapping, JavaMapping):
            return mapping
        else:
            return Mapping.getByName("cpp")

    def getExe(self, current):
        mapping = self.getMapping(current)
        if isinstance(mapping, JavaCompatMapping):
            return "IceBox.Admin"
        elif isinstance(mapping, JavaMapping):
            return "com.zeroc.IceBox.Admin"
        elif isinstance(platform, AIX) and \
             current.config.buildPlatform == "ppc" and not component.useBinDist(mapping, current):
            return "iceboxadmin_32"
        else:
            return "iceboxadmin"
