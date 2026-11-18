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
# package org.allbinary.input.motion.button

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- BasicArrayListUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListUtil" "jm_getInstance" args))
(import ./BaseTouchInput :as BaseTouchInput)

# Java class NoButtonsBuilder
(var jproto nil)
(var jnew_0 nil)
(var jm_getList nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "NoButtonsBuilder" :f_logUtil nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (JR/superInit this (BaseTouchInput/jnew_0))
    this))

    
(set jm_getList (fn jm_getList [this]
    (label jreturn
        (try
            (do
            (:jm_putF (this :f_logUtil) ((this :f_commonStrings) :f_START) this ((this :f_commonStrings) :f_CONSTRUCTOR))
            (var _list (:jm_getImmutableInstance (BasicArrayListUtil/jm_getInstance)))
            (return jreturn _list))
            ([_e] (do
            (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this ((this :f_commonStrings) :f_GET_LIST) _e)
            (return jreturn (:jm_getImmutableInstance (BasicArrayListUtil/jm_getInstance)))))))))

(set jproto (table/setproto @{:jm_getList jm_getList} BaseTouchInput/jproto))


