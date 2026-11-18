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
# package org.allbinary.graphics.canvas.transition.progress

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- BasicColorFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/graphics/color/BasicColorFactory" "jm_getInstance" args))
(defn- NullPaintable/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/graphics/paint/NullPaintable" "jm_getInstance" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- ProgressCanvas/jnew_3 [& args] (JR/call jfile "./ProgressCanvas" "jnew_3" args))

# Java class ProgressCanvasFactory
(var jproto nil)
(var jcell_PROGRESS_FORM_SCREEN :jnone)
(var jstatic_PROGRESS_FORM_SCREEN nil)
(var jsetstatic_PROGRESS_FORM_SCREEN nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getLazyInstance nil)

(set jstatic_PROGRESS_FORM_SCREEN (fn jstatic_PROGRESS_FORM_SCREEN []
  (when (= jcell_PROGRESS_FORM_SCREEN :jnone) (set jcell_PROGRESS_FORM_SCREEN ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
  jcell_PROGRESS_FORM_SCREEN))
(set jsetstatic_PROGRESS_FORM_SCREEN (fn jsetstatic_PROGRESS_FORM_SCREEN [value] (set jcell_PROGRESS_FORM_SCREEN value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ProgressCanvasFactory"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (if (= (jstatic_PROGRESS_FORM_SCREEN) ((NullUtil/jm_getInstance) :f_NULL_OBJECT))
            (do
            (set jcell_PROGRESS_FORM_SCREEN (ProgressCanvas/jnew_3 ((StringUtil/jm_getInstance) :f_EMPTY_STRING) ((BasicColorFactory/jm_getInstance) :f_BLACK) ((BasicColorFactory/jm_getInstance) :f_WHITE)))))
        (return jreturn (jstatic_PROGRESS_FORM_SCREEN)))))
    
(set jm_getLazyInstance (fn jm_getLazyInstance []
    (label jreturn
        (return jreturn (NullPaintable/jm_getInstance)))))

(set jproto @{})


