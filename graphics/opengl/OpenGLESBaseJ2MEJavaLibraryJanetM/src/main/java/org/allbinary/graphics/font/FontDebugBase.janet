# Generated Code Do Not Modify
# package org.allbinary.graphics.font

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

#OpenGLESBaseJ2MEJavaLibrary
# Java class FontDebugBase
(var jproto nil)
(var jcell_instanceBase :jnone)
(var jstatic_instanceBase nil)
(var jsetstatic_instanceBase nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_debugMetrics nil)
(var jm_debugDpi nil)
(var jm_debugDimension nil)

(set jstatic_instanceBase (fn jstatic_instanceBase []
  (when (= jcell_instanceBase :jnone) (set jcell_instanceBase (jnew_0)))
  jcell_instanceBase))
(set jsetstatic_instanceBase (fn jsetstatic_instanceBase [value] (set jcell_instanceBase value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "FontDebugBase" :f_SET_FONT nil} jproto))
    (put this :f_SET_FONT "setFont")
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instanceBase)))))
    
(set jm_debugMetrics (fn jm_debugMetrics [this _currentFont _convertedTextSize _displayMetrics _stringBuffer]
    nil))
    
(set jm_debugDpi (fn jm_debugDpi [this _densityDpi _stringBuffer]
    nil))
    
(set jm_debugDimension (fn jm_debugDimension [this _currentFont _convertedTextSize _longestDimensionTotalPixels _stringBuffer]
    nil))

(set jproto @{:jm_debugMetrics jm_debugMetrics :jm_debugDpi jm_debugDpi :jm_debugDimension jm_debugDimension})


