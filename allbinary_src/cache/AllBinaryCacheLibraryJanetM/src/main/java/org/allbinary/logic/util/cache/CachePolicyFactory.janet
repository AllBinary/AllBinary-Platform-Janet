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
(import ../../../../../java/lang/Long :as Long)
(defn- CachePolicy/jnew_3 [& args] (JR/call jfile "./CachePolicy" "jnew_3" args))

# Java class CachePolicyFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "CachePolicyFactory" :f_NAME nil :f_MAX_TIME_THOUSAND_MAX nil :f_THIRTY_MINUTES_TEN_THOUSAND_MAX nil :f_THIRTY_MINUTES_FIFTY_THOUSAND_MAX nil :f_ONE_MINUTE_FIVE_MAX nil :f_ONE_MINUTE_TEN_MAX nil :f_ONE_MINUTE_ONE_HUNDRED_MAX nil} jproto))
    (put this :f_NAME "lru")
    (put this :f_MAX_TIME_THOUSAND_MAX (CachePolicy/jnew_3 (this :f_NAME) (Long/jstatic_MAX_VALUE) 1000))
    (put this :f_THIRTY_MINUTES_TEN_THOUSAND_MAX (CachePolicy/jnew_3 (this :f_NAME) (JR/i32 (* (JR/i32 (* 1000 60)) 30)) 10000))
    (put this :f_THIRTY_MINUTES_FIFTY_THOUSAND_MAX (CachePolicy/jnew_3 (this :f_NAME) (JR/i32 (* (JR/i32 (* 1000 60)) 30)) 100000))
    (put this :f_ONE_MINUTE_FIVE_MAX (CachePolicy/jnew_3 (this :f_NAME) (JR/i32 (* (JR/i32 (* 1000 60)) 1)) 5))
    (put this :f_ONE_MINUTE_TEN_MAX (CachePolicy/jnew_3 (this :f_NAME) (JR/i32 (* (JR/i32 (* 1000 60)) 1)) 10))
    (put this :f_ONE_MINUTE_ONE_HUNDRED_MAX (CachePolicy/jnew_3 (this :f_NAME) (JR/i32 (* (JR/i32 (* 1000 60)) 1)) 100))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{})


