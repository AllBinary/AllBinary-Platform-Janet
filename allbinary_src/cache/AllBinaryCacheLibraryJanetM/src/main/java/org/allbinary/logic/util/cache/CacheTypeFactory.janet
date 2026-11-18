# Generated Code Do Not Modify
# package org.allbinary.logic.util.cache

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CacheType/jnew_2 [& args] (JR/call jfile "./CacheType" "jnew_2" args))

# Java class CacheTypeFactory
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
    (var this (table/setproto @{:jclass "CacheTypeFactory" :f_NO_CACHE nil :f_CACHE nil :f_SET nil :f_CACHE_VECTOR nil} jproto))
    (put this :f_NO_CACHE (CacheType/jnew_2 ((StringUtil/jm_getInstance) :f_EMPTY_STRING) ((StringUtil/jm_getInstance) :f_EMPTY_STRING)))
    (put this :f_CACHE (CacheType/jnew_2 ((StringUtil/jm_getInstance) :f_EMPTY_STRING) ((StringUtil/jm_getInstance) :f_EMPTY_STRING)))
    (put this :f_SET (CacheType/jnew_2 ((StringUtil/jm_getInstance) :f_EMPTY_STRING) "Set"))
    (put this :f_CACHE_VECTOR (CacheType/jnew_2 ((StringUtil/jm_getInstance) :f_EMPTY_STRING) ((StringUtil/jm_getInstance) :f_EMPTY_STRING)))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{})


