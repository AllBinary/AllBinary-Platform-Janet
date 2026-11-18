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
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- TouchScreenTypesFactory/jm_getInstance [& args] (JR/call jfile "./TouchScreenTypesFactory" "jm_getInstance" args))

# Java class TouchScreenFactory
(var jproto nil)
(var jcell_SINGLETON :jnone)
(var jstatic_SINGLETON nil)
(var jsetstatic_SINGLETON nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_setMultiTouch nil)
(var jm_isMultiTouch nil)
(var jm_setTouch nil)
(var jm_isTouch nil)
(var jm_setMultiTouchDistinct nil)
(var jm_isMultiTouchDistinct nil)
(var jm_setTouchScreenType nil)
(var jm_getTouchScreenType nil)
(var jm_toString nil)

(set jstatic_SINGLETON (fn jstatic_SINGLETON []
  (when (= jcell_SINGLETON :jnone) (set jcell_SINGLETON (jnew_0)))
  jcell_SINGLETON))
(set jsetstatic_SINGLETON (fn jsetstatic_SINGLETON [value] (set jcell_SINGLETON value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TouchScreenFactory" :f_logUtil nil :f_touch false :f_multiTouch false :f_multiTouchDistinct false :f_touchScreenType nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    
    
    
    (put this :f_touchScreenType ((TouchScreenTypesFactory/jm_getInstance) :f_NOTOUCH))
        (try
            (do
            (:jm_setTouch this true)
            (:jm_setMultiTouch this false))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) (jstatic_SINGLETON) (_commonStrings :f_GET_INSTANCE) _e))))
    this))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_SINGLETON)))))
    
(set jm_setMultiTouch (fn jm_setMultiTouch [this _multiTouch]
        (set (this :f_multiTouch) _multiTouch)))
    
(set jm_isMultiTouch (fn jm_isMultiTouch [this]
    (label jreturn
        (return jreturn (this :f_multiTouch)))))
    
(set jm_setTouch (fn jm_setTouch [this _touch]
        (set (this :f_touch) _touch)))
    
(set jm_isTouch (fn jm_isTouch [this]
    (label jreturn
        (return jreturn (this :f_touch)))))
    
(set jm_setMultiTouchDistinct (fn jm_setMultiTouchDistinct [this _multiTouchDistinct]
        (set (this :f_multiTouchDistinct) _multiTouchDistinct)))
    
(set jm_isMultiTouchDistinct (fn jm_isMultiTouchDistinct [this]
    (label jreturn
        (return jreturn (this :f_multiTouchDistinct)))))
    
(set jm_setTouchScreenType (fn jm_setTouchScreenType [this _touchScreenType]
        (set (this :f_touchScreenType) _touchScreenType)))
    
(set jm_getTouchScreenType (fn jm_getTouchScreenType [this]
    (label jreturn
        (return jreturn (this :f_touchScreenType)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer "TouchScreen: ")
        (:jm_appendboolean _stringBuffer (:jm_isTouch this))
        (:jm_append _stringBuffer " MultiTouch: ")
        (:jm_appendboolean _stringBuffer (:jm_isMultiTouch this))
        (:jm_append _stringBuffer " Distinct MultiTouch: ")
        (:jm_appendboolean _stringBuffer (:jm_isMultiTouchDistinct this))
        (:jm_append _stringBuffer " TouchScreenType: ")
        (:jm_append _stringBuffer (:jm_toString_1 (StringUtil/jm_getInstance) (:jm_getTouchScreenType this)))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto @{:jm_setMultiTouch jm_setMultiTouch :jm_isMultiTouch jm_isMultiTouch :jm_setTouch jm_setTouch :jm_isTouch jm_isTouch :jm_setMultiTouchDistinct jm_setMultiTouchDistinct :jm_isMultiTouchDistinct jm_isMultiTouchDistinct :jm_setTouchScreenType jm_setTouchScreenType :jm_getTouchScreenType jm_getTouchScreenType :jm_toString jm_toString})


