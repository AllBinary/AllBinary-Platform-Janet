# Generated Code Do Not Modify
# package org.allbinary.logic.util.cache

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- PoolType/jnew_1 [& args] (JR/call jfile "./PoolType" "jnew_1" args))
(defn- CacheTypeFactory/jm_getInstance [& args] (JR/call jfile "./CacheTypeFactory" "jm_getInstance" args))

# Java class PoolTypeFactory
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
    (var this (table/setproto @{:jclass "PoolTypeFactory" :f_VECTOR_POOL nil} jproto))
    (put this :f_VECTOR_POOL (PoolType/jnew_1 ((CacheTypeFactory/jm_getInstance) :f_NO_CACHE)))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{})


