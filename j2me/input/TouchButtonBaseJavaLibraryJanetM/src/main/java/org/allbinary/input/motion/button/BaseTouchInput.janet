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
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- BasicArrayListUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListUtil" "jm_getInstance" args))

# Java class BaseTouchInput
(var jproto nil)
(var jnew_0 nil)
(var jm_getList nil)
(var jm_toString nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BaseTouchInput" :f_commonStrings nil :f_basicArrayListUtil nil} jproto))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_basicArrayListUtil (BasicArrayListUtil/jm_getInstance))
    this))
    
(set jm_getList (fn jm_getList [this]
    (label jreturn
        (return jreturn (:jm_getImmutableInstance (this :f_basicArrayListUtil))))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (return jreturn (JR/className this)))))

(set jproto @{:jm_getList jm_getList :jm_toString jm_toString})


