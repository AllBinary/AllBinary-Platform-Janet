#
# AllBinary Open License Version 1
# Copyright (c) 2022 AllBinary
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
# package org.allbinary.graphics.displayable.screen

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- AboutPaintable/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/paint/AboutPaintable" "jm_getInstance" args))
(defn- NullPaintable/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/paint/NullPaintable" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))

# Java class AboutPaintableFactory
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

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AboutPaintableFactory" :f_paintableArray nil} jproto))
    (put this :f_paintableArray @[(NullPaintable/jm_getInstance)])
        (var _INFO @["Built with the" "AllBinary Platform" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) "Comments or Questions:" "support@allbinary.com"])
        (var _DEVELOPERS @["Developed By:" "Travis Berthelot"])
        (set (this :f_paintableArray) (:jm_getPaintableArrayInstance (AboutPaintable/jm_getInstance _INFO _DEVELOPERS)))
    this))

(set jproto @{})


