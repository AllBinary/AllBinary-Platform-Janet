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
# package org.allbinary.logic.util.cache

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))

# Java class AbstractArrayListPool
(var jproto nil)
(var jnew_1 nil)
(var jm_clear nil)
(var jm_remove nil)
(var jm_add nil)
(var jm_addArray nil)

    
(set jnew_1 (fn jnew_1 [_cacheableInterfaceFactoryInterface]
    (var this (table/setproto @{:jclass "AbstractArrayListPool" :f_commonStrings nil :f_buffers nil :f_cacheableInterfaceFactoryInterface nil} jproto))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_buffers (BasicArrayListD/jnew_0))
    
        (set (this :f_cacheableInterfaceFactoryInterface) _cacheableInterfaceFactoryInterface)
    this))
    
(set jm_clear (fn jm_clear [this]
        (error (JR/newException "Exception" ((this :f_commonStrings) :f_NOT_IMPLEMENTED)))))
    
(set jm_remove (fn jm_remove [this _key]
        (error (JR/newException "Exception" ((this :f_commonStrings) :f_NOT_IMPLEMENTED)))))
    
(set jm_add (fn jm_add [this _cacheableInterface]
        (:jm_add (this :f_buffers) _cacheableInterface)))
    
(set jm_addArray (fn jm_addArray [this _cacheableInterfaces]
        (do
            (var _index 0)
            (while (< _index (length _cacheableInterfaces))
                (do
            (:jm_add (this :f_buffers) (_cacheableInterfaces _index)))
                (do (set _index (JR/i32 (+ _index 1))))))))

(set jproto @{:jm_clear jm_clear :jm_remove jm_remove :jm_add jm_add :jm_addArray jm_addArray})


