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
# package org.allbinary.layer

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(defn- BasicArrayListUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/util/BasicArrayListUtil" "jm_getInstance" args))
(import ../../../java/lang/Integer :as Integer)
(defn- Layer/jstatic_ID [& args] (JR/call jfile "./Layer" "jstatic_ID" args))

# Java class LayerInterfaceFactory
(var jproto nil)
(var jcell_SINGLETON :jnone)
(var jstatic_SINGLETON nil)
(var jsetstatic_SINGLETON nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_init nil)
(var jm_getNexInstance nil)
(var jm_add nil)

(set jstatic_SINGLETON (fn jstatic_SINGLETON []
  (when (= jcell_SINGLETON :jnone) (set jcell_SINGLETON (jnew_0)))
  jcell_SINGLETON))
(set jsetstatic_SINGLETON (fn jsetstatic_SINGLETON [value] (set jcell_SINGLETON value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LayerInterfaceFactory" :f_logUtil nil :f_list nil :f_HASHTABLE_LABEL nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_list (:jm_getImmutableInstance (BasicArrayListUtil/jm_getInstance)))
    (put this :f_HASHTABLE_LABEL "Hashtable: ")
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_SINGLETON)))))
    
(set jm_init (fn jm_init [this]
        (set (this :f_list) (BasicArrayListD/jnew_0))))
    
(set jm_getNexInstance (fn jm_getNexInstance [this _hashtable _x _y _z]
    (label jreturn
        (var _commonStrings (CommonStrings/jm_getInstance))
        (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) (this :f_HASHTABLE_LABEL)) (:jm_toString_1 (StringUtil/jm_getInstance) _hashtable))) this (_commonStrings :f_GET_INSTANCE))
        (var _typeInteger (:jm_get _hashtable (Layer/jstatic_ID)))
        (var _layerInterfaceFactoryInterface (((this :f_list) :f_objectArray) (JR/i32 (- (:jm_intValue _typeInteger) 1))))
        (return jreturn (:jm_getNextInstance _layerInterfaceFactoryInterface _hashtable _x _y _z)))))
    
(set jm_add (fn jm_add [this _layerInterfaceFactoryInterface]
        (:jm_add (this :f_list) _layerInterfaceFactoryInterface)))

(set jproto @{:jm_init jm_init :jm_getNexInstance jm_getNexInstance :jm_add jm_add})


