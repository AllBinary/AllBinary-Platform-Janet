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
(defn- TsUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/TsUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(import ../../../java/lang/Integer :as Integer)
(import ./LayerManagerLoggingBase :as LayerManagerLoggingBase)

# Java class LayerManagerLogging
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jcell_removeFailed :jnone)
(var jstatic_removeFailed nil)
(var jsetstatic_removeFailed nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_append nil)
(var jm_appendAt nil)
(var jm_remove nil)
(var jm_removeResult nil)
(var jm_log nil)
(var jm_clear nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jstatic_removeFailed (fn jstatic_removeFailed []
  (when (= jcell_removeFailed :jnone) (set jcell_removeFailed false))
  jcell_removeFailed))
(set jsetstatic_removeFailed (fn jsetstatic_removeFailed [value] (set jcell_removeFailed value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LayerManagerLogging" :f_logUtil nil :f_stringBuilder nil :f_APPEND nil :f_APPEND_ nil :f__AT_ nil :f_ATTEMPT_REMOVE_ nil :f_REMOVE_ nil :f_REMOVE nil :f_DID_NOT_REMOVE nil :f_CLEAR nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_stringBuilder (StringMaker/jnew_0))
    (put this :f_APPEND "append")
    (put this :f_APPEND_ " append: ")
    (put this :f__AT_ " at: ")
    (put this :f_ATTEMPT_REMOVE_ " Remove Attempt: ")
    (put this :f_REMOVE_ " Remove: ")
    (put this :f_REMOVE "remove")
    (put this :f_DID_NOT_REMOVE " Did not remove: ")
    (put this :f_CLEAR " Clear List")
    (JR/superInit this (LayerManagerLoggingBase/jnew_0))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_append (fn jm_append [this _layerInterface]
        (:jm_delete (this :f_stringBuilder) 0 (:jm_length (this :f_stringBuilder)))
        (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (:jm_appendint (this :f_stringBuilder) (:jm_hashCode_1 (TsUtil/jm_getInstance) this)) (this :f_APPEND_)) (:jm_getName _layerInterface))) this (this :f_APPEND))))
    
(set jm_appendAt (fn jm_appendAt [this _layerInterface _index]
        (:jm_delete (this :f_stringBuilder) 0 (:jm_length (this :f_stringBuilder)))
        (:jm_putF (this :f_logUtil) (:jm_toString (:jm_appendint (:jm_append (:jm_append (:jm_append (:jm_appendint (this :f_stringBuilder) (:jm_hashCode_1 (TsUtil/jm_getInstance) this)) (this :f_APPEND_)) (:jm_getName _layerInterface)) (this :f__AT_)) _index)) this (this :f_APPEND))))
    
(set jm_remove (fn jm_remove [this _layerInterface]
        (if (nil? _layerInterface)
            (do
            (:jm_delete (this :f_stringBuilder) 0 (:jm_length (this :f_stringBuilder)))
            (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (:jm_appendint (this :f_stringBuilder) (:jm_hashCode_1 (TsUtil/jm_getInstance) this)) (this :f_ATTEMPT_REMOVE_)) (:jm_toString_1 (StringUtil/jm_getInstance) _layerInterface))) this (this :f_REMOVE)))
            (do
            (:jm_delete (this :f_stringBuilder) 0 (:jm_length (this :f_stringBuilder)))
            (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (:jm_appendint (this :f_stringBuilder) (:jm_hashCode_1 (TsUtil/jm_getInstance) this)) (this :f_ATTEMPT_REMOVE_)) (:jm_getName _layerInterface))) this (this :f_REMOVE))))))
    
(set jm_removeResult (fn jm_removeResult [this _layerManager _layerInterface _result]
        (if (nil? _layerInterface)
            (do
            (:jm_delete (this :f_stringBuilder) 0 (:jm_length (this :f_stringBuilder)))
            (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (:jm_appendint (this :f_stringBuilder) (:jm_hashCode_1 (TsUtil/jm_getInstance) this)) (this :f_REMOVE_)) (:jm_toString_1 (StringUtil/jm_getInstance) _layerInterface))) this (this :f_REMOVE)))
            (if _result
            (do
            (if (jstatic_removeFailed)
                (do
                (:jm_delete (this :f_stringBuilder) 0 (:jm_length (this :f_stringBuilder)))
                (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (:jm_appendint (this :f_stringBuilder) (:jm_hashCode_1 (TsUtil/jm_getInstance) this)) (this :f_REMOVE_)) (:jm_getName _layerInterface))) this (this :f_REMOVE)))))
            (do
            (:jm_delete (this :f_stringBuilder) 0 (:jm_length (this :f_stringBuilder)))
            (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (:jm_appendint (this :f_stringBuilder) (:jm_hashCode_1 (TsUtil/jm_getInstance) this)) (this :f_DID_NOT_REMOVE)) (:jm_getName _layerInterface))) this (this :f_REMOVE))
            (set jcell_removeFailed true))))))
    
(set jm_log (fn jm_log [this _layerManager]
        (:jm_delete (this :f_stringBuilder) 0 (:jm_length (this :f_stringBuilder)))
        (var _size (:jm_getSize _layerManager))
        (var _commonSeps (CommonSeps/jm_getInstance))
        (:jm_append (:jm_append (this :f_stringBuilder) (Integer/jm_toHexString (:jm_hashCode_1 (TsUtil/jm_getInstance) _layerManager))) (_commonSeps :f_COLON_SEP))
        (:jm_append (:jm_appendint (this :f_stringBuilder) _size) (_commonSeps :f_COLON_SEP))
        (var _allBinaryLayer nil)
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _allBinaryLayer (:jm_getLayerAt _layerManager _index))
            (:jm_append (:jm_append (this :f_stringBuilder) (:jm_getName _allBinaryLayer)) (_commonSeps :f_COMMA)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (:jm_putF (this :f_logUtil) (:jm_toString (this :f_stringBuilder)) this (this :f_REMOVE))))
    
(set jm_clear (fn jm_clear [this]
        (:jm_delete (this :f_stringBuilder) 0 (:jm_length (this :f_stringBuilder)))
        (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_appendint (this :f_stringBuilder) (:jm_hashCode_1 (TsUtil/jm_getInstance) this)) (this :f_CLEAR))) this (this :f_CLEAR))))

(set jproto (table/setproto @{:jm_append jm_append :jm_appendAt jm_appendAt :jm_remove jm_remove :jm_removeResult jm_removeResult :jm_log jm_log :jm_clear jm_clear} LayerManagerLoggingBase/jproto))


