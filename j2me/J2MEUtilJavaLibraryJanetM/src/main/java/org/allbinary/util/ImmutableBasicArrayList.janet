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
# package org.allbinary.util

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- ForcedLogUtil/jm_log [& args] (JR/call jfile "../../../org/allbinary/logic/communication/log/ForcedLogUtil" "jm_log" args))
(import ./BasicArrayListS :as BasicArrayListS)

# Java class ImmutableBasicArrayList
(var jproto nil)
(var jnew_2 nil)
(var jm_add nil)
(var jm_addAt nil)
(var jm_toString nil)

    
(set jnew_2 (fn jnew_2 [_name _size]
    (var this (table/setproto @{:jclass "ImmutableBasicArrayList" :f_name nil} jproto))
    
        (JR/superInit this (BasicArrayListS/jnew_1 _size))
        (set (this :f_name) _name)
    this))
    
(set jm_add (fn jm_add [this _e]
    (label jreturn
        (ForcedLogUtil/jm_log (this :f_name) this)
        (return jreturn true))))
    
(set jm_addAt (fn jm_addAt [this _index _element]
        (ForcedLogUtil/jm_log (this :f_name) this)))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (return jreturn (this :f_name)))))

(set jproto (table/setproto @{:jm_add jm_add :jm_addAt jm_addAt :jm_toString jm_toString} BasicArrayListS/jproto))


