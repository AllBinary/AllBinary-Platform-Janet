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
(defn- TouchScreenTypesFactory/jm_getInstance [& args] (JR/call jfile "./TouchScreenTypesFactory" "jm_getInstance" args))

# Java class TouchScreenFactory
(var jproto nil)
(var jcell_SINGLETON :jnone)
(var jstatic_SINGLETON nil)
(var jsetstatic_SINGLETON nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_isMultiTouch nil)
(var jm_setTouch nil)
(var jm_isTouch nil)
(var jm_getTouchScreenType nil)

(set jstatic_SINGLETON (fn jstatic_SINGLETON []
  (when (= jcell_SINGLETON :jnone) (set jcell_SINGLETON (jnew_0)))
  jcell_SINGLETON))
(set jsetstatic_SINGLETON (fn jsetstatic_SINGLETON [value] (set jcell_SINGLETON value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TouchScreenFactory" :f_multiTouch false :f_touch false :f_touchScreenType nil} jproto))
    
    
    (put this :f_touchScreenType ((TouchScreenTypesFactory/jm_getInstance) :f_NOTOUCH))
    this))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_SINGLETON)))))
    
(set jm_isMultiTouch (fn jm_isMultiTouch [this]
    (label jreturn
        (return jreturn (this :f_multiTouch)))))
    
(set jm_setTouch (fn jm_setTouch [this _touch]
    nil))
    
(set jm_isTouch (fn jm_isTouch [this]
    (label jreturn
        (return jreturn (this :f_touch)))))
    
(set jm_getTouchScreenType (fn jm_getTouchScreenType [this]
    (label jreturn
        (return jreturn (this :f_touchScreenType)))))

(set jproto @{:jm_isMultiTouch jm_isMultiTouch :jm_setTouch jm_setTouch :jm_isTouch jm_isTouch :jm_getTouchScreenType jm_getTouchScreenType})


