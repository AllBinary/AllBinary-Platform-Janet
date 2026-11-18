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
# package org.allbinary.game.displayable.canvas

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullPaintable/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/paint/NullPaintable" "jm_getInstance" args))

# Java class BaseMenuBehavior
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_onDisplayChangeEvent nil)
(var jm_initSpecialPaint nil)
(var jm_initMenu nil)
(var jm_updateMenu nil)
(var jm_popupMenu nil)
(var jm_closeMenu nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BaseMenuBehavior"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_onDisplayChangeEvent (fn jm_onDisplayChangeEvent [this _allBinaryGameCanvas _displayChangeEvent]
    nil))
    
(set jm_initSpecialPaint (fn jm_initSpecialPaint [this _allBinaryGameCanvas]
        (:jm_setNonBotPaintableP _allBinaryGameCanvas (NullPaintable/jm_getInstance))))
    
(set jm_initMenu (fn jm_initMenu [this _allBinaryGameCanvas]
    nil))
    
(set jm_updateMenu (fn jm_updateMenu [this _allBinaryGameCanvas]
    nil))
    
(set jm_popupMenu (fn jm_popupMenu [this _allBinaryGameCanvas]
    nil))
    
(set jm_closeMenu (fn jm_closeMenu [this _allBinaryGameCanvas]
    nil))

(set jproto @{:jm_onDisplayChangeEvent jm_onDisplayChangeEvent :jm_initSpecialPaint jm_initSpecialPaint :jm_initMenu jm_initMenu :jm_updateMenu jm_updateMenu :jm_popupMenu jm_popupMenu :jm_closeMenu jm_closeMenu})


