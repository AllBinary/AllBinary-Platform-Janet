#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# 
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# package org.allbinary.game.input

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../org/allbinary/init/Init :as Init)
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))

# Java class KeyFactoryInitializer
(var jproto nil)
(var jnew_0 nil)
(var jm_init nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "KeyFactoryInitializer" :f_logUtil nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (JR/superInit this (Init/jnew_0))
    this))

    
(set jm_init (fn jm_init [this]
        (:jm_putF (this :f_logUtil) ((this :f_commonStrings) :f_START) this ((this :f_commonStrings) :f_INIT))))

(set jproto (table/setproto @{:jm_init jm_init} Init/jproto))


