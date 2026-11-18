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
# package org.allbinary.graphics.color

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StdUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/StdUtil" "jm_getInstance" args))
(import ../../../../java/lang/Integer :as Integer)
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "./BasicColorFactory" "jm_getInstance" args))

# Java class BasicColorCacheFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_add nil)
(var jm_getAndOrCreate nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BasicColorCacheFactory" :f_hashtable nil} jproto))
    (put this :f_hashtable (:jm_createHashtable (StdUtil/jm_getInstance)))
    this))
    
(set jm_add (fn jm_add [this _basicDefaultColor]
        (:jm_put (this :f_hashtable) (:jm_intValue _basicDefaultColor) _basicDefaultColor)))
    
(set jm_getAndOrCreate (fn jm_getAndOrCreate [this _integer]
    (label jreturn
        (var _basicColor (:jm_get (this :f_hashtable) _integer))
        (if (nil? _basicColor)
            (do
            (set _basicColor (:jm_createInstance (BasicColorFactory/jm_getInstance) (:jm_intValue _integer)))
            (:jm_put (this :f_hashtable) _integer _basicColor)))
        (return jreturn _basicColor))))

(set jproto @{:jm_add jm_add :jm_getAndOrCreate jm_getAndOrCreate})


