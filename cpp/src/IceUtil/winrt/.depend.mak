$(ARCH)\$(CONFIG)\ArgVector$(OBJEXT): ..\ArgVector.cpp "$(includedir)\IceUtil\ArgVector.h" "$(includedir)\IceUtil\Config.h" "$(includedir)\IceUtil\DisableWarnings.h" 
$(ARCH)\$(CONFIG)\Cond$(OBJEXT): ..\Cond.cpp "$(includedir)\IceUtil\Cond.h" "$(includedir)\IceUtil\Config.h" "$(includedir)\IceUtil\Time.h" "$(includedir)\IceUtil\ThreadException.h" "$(includedir)\IceUtil\Exception.h" 
$(ARCH)\$(CONFIG)\ConvertUTF$(OBJEXT): ..\ConvertUTF.cpp "..\ConvertUTF.h" "$(includedir)\IceUtil\Unicode.h" "$(includedir)\IceUtil\Config.h" "$(includedir)\IceUtil\Exception.h" 
$(ARCH)\$(CONFIG)\CountDownLatch$(OBJEXT): ..\CountDownLatch.cpp "$(includedir)\IceUtil\CountDownLatch.h" "$(includedir)\IceUtil\Config.h" "$(includedir)\IceUtil\ThreadException.h" "$(includedir)\IceUtil\Exception.h" "$(includedir)\IceUtil\Time.h" 
$(ARCH)\$(CONFIG)\Exception$(OBJEXT): ..\Exception.cpp "$(includedir)\IceUtil\Exception.h" "$(includedir)\IceUtil\Config.h" "$(includedir)\IceUtil\MutexPtrLock.h" "$(includedir)\IceUtil\ThreadException.h" "$(includedir)\IceUtil\Time.h" "$(includedir)\IceUtil\Mutex.h" "$(includedir)\IceUtil\Lock.h" "$(includedir)\IceUtil\MutexProtocol.h" "$(includedir)\IceUtil\StringUtil.h" 
$(ARCH)\$(CONFIG)\FileUtil$(OBJEXT): ..\FileUtil.cpp "$(includedir)\IceUtil\DisableWarnings.h" "$(includedir)\IceUtil\FileUtil.h" "$(includedir)\IceUtil\Config.h" "$(includedir)\IceUtil\Shared.h" "$(includedir)\IceUtil\Handle.h" "$(includedir)\IceUtil\Exception.h" "$(includedir)\IceUtil\Unicode.h" 
$(ARCH)\$(CONFIG)\InputUtil$(OBJEXT): ..\InputUtil.cpp "$(includedir)\IceUtil\InputUtil.h" "$(includedir)\IceUtil\Config.h" 
$(ARCH)\$(CONFIG)\Options$(OBJEXT): ..\Options.cpp "$(includedir)\IceUtil\Options.h" "$(includedir)\IceUtil\Config.h" "$(includedir)\IceUtil\RecMutex.h" "$(includedir)\IceUtil\Lock.h" "$(includedir)\IceUtil\ThreadException.h" "$(includedir)\IceUtil\Exception.h" "$(includedir)\IceUtil\Time.h" "$(includedir)\IceUtil\MutexProtocol.h" "$(includedir)\IceUtil\Shared.h" "$(includedir)\IceUtil\Handle.h" "$(includedir)\IceUtil\StringUtil.h" 
$(ARCH)\$(CONFIG)\OutputUtil$(OBJEXT): ..\OutputUtil.cpp "$(includedir)\IceUtil\OutputUtil.h" "$(includedir)\IceUtil\Config.h" "$(includedir)\IceUtil\FileUtil.h" "$(includedir)\IceUtil\Shared.h" "$(includedir)\IceUtil\Handle.h" "$(includedir)\IceUtil\Exception.h" 
$(ARCH)\$(CONFIG)\Random$(OBJEXT): ..\Random.cpp "$(includedir)\IceUtil\Random.h" "$(includedir)\IceUtil\Config.h" "$(includedir)\IceUtil\Exception.h" "$(includedir)\IceUtil\Mutex.h" "$(includedir)\IceUtil\Lock.h" "$(includedir)\IceUtil\ThreadException.h" "$(includedir)\IceUtil\Time.h" "$(includedir)\IceUtil\MutexProtocol.h" "$(includedir)\IceUtil\MutexPtrLock.h" 
$(ARCH)\$(CONFIG)\RecMutex$(OBJEXT): ..\RecMutex.cpp "$(includedir)\IceUtil\RecMutex.h" "$(includedir)\IceUtil\Config.h" "$(includedir)\IceUtil\Lock.h" "$(includedir)\IceUtil\ThreadException.h" "$(includedir)\IceUtil\Exception.h" "$(includedir)\IceUtil\Time.h" "$(includedir)\IceUtil\MutexProtocol.h" 
$(ARCH)\$(CONFIG)\Shared$(OBJEXT): ..\Shared.cpp "$(includedir)\IceUtil\Shared.h" "$(includedir)\IceUtil\Config.h" 
$(ARCH)\$(CONFIG)\StringUtil$(OBJEXT): ..\StringUtil.cpp "$(includedir)\IceUtil\StringUtil.h" "$(includedir)\IceUtil\Config.h" "$(includedir)\IceUtil\Unicode.h" "$(includedir)\IceUtil\Exception.h" "$(includedir)\IceUtil\ScopedArray.h" 
$(ARCH)\$(CONFIG)\Thread$(OBJEXT): ..\Thread.cpp "$(includedir)\IceUtil\Thread.h" "$(includedir)\IceUtil\Config.h" "$(includedir)\IceUtil\Shared.h" "$(includedir)\IceUtil\Handle.h" "$(includedir)\IceUtil\Exception.h" "$(includedir)\IceUtil\Mutex.h" "$(includedir)\IceUtil\Lock.h" "$(includedir)\IceUtil\ThreadException.h" "$(includedir)\IceUtil\Time.h" "$(includedir)\IceUtil\MutexProtocol.h" 
$(ARCH)\$(CONFIG)\ThreadException$(OBJEXT): ..\ThreadException.cpp "$(includedir)\IceUtil\ThreadException.h" "$(includedir)\IceUtil\Exception.h" "$(includedir)\IceUtil\Config.h" "$(includedir)\IceUtil\Time.h" 
$(ARCH)\$(CONFIG)\Time$(OBJEXT): ..\Time.cpp "$(includedir)\IceUtil\DisableWarnings.h" "$(includedir)\IceUtil\Exception.h" "$(includedir)\IceUtil\Config.h" "$(includedir)\IceUtil\Time.h" 
$(ARCH)\$(CONFIG)\Timer$(OBJEXT): ..\Timer.cpp "$(includedir)\IceUtil\Timer.h" "$(includedir)\IceUtil\Shared.h" "$(includedir)\IceUtil\Config.h" "$(includedir)\IceUtil\Thread.h" "$(includedir)\IceUtil\Handle.h" "$(includedir)\IceUtil\Exception.h" "$(includedir)\IceUtil\Mutex.h" "$(includedir)\IceUtil\Lock.h" "$(includedir)\IceUtil\ThreadException.h" "$(includedir)\IceUtil\Time.h" "$(includedir)\IceUtil\MutexProtocol.h" "$(includedir)\IceUtil\Monitor.h" "$(includedir)\IceUtil\Cond.h" 
$(ARCH)\$(CONFIG)\UUID$(OBJEXT): ..\UUID.cpp "$(includedir)\IceUtil\UUID.h" "$(includedir)\IceUtil\Config.h" "$(includedir)\IceUtil\Random.h" "$(includedir)\IceUtil\Exception.h" 
$(ARCH)\$(CONFIG)\Unicode$(OBJEXT): ..\Unicode.cpp "$(includedir)\IceUtil\Unicode.h" "$(includedir)\IceUtil\Config.h" "$(includedir)\IceUtil\Exception.h" "..\ConvertUTF.h" 
$(ARCH)\$(CONFIG)\MutexProtocol$(OBJEXT): ..\MutexProtocol.cpp "$(includedir)\IceUtil\MutexProtocol.h" "$(includedir)\IceUtil\Config.h" 