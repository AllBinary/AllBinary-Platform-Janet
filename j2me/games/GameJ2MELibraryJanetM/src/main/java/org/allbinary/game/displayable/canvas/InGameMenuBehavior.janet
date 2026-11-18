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
(import ./BaseMenuBehavior :as BaseMenuBehavior)
(defn- GameCanvasNonBotPaintable/jnew_1 [& args] (JR/call jfile "./GameCanvasNonBotPaintable" "jnew_1" args))

# Java class InGameMenuBehavior
(var jproto nil)
(var jcell_instanceC :jnone)
(var jstatic_instanceC nil)
(var jsetstatic_instanceC nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_onDisplayChangeEvent nil)
(var jm_initSpecialPaint nil)
(var jm_initMenu nil)
(var jm_updateMenu nil)
(var jm_popupMenu nil)
(var jm_closeMenu nil)

(set jstatic_instanceC (fn jstatic_instanceC []
  (when (= jcell_instanceC :jnone) (set jcell_instanceC (jnew_0)))
  jcell_instanceC))
(set jsetstatic_instanceC (fn jsetstatic_instanceC [value] (set jcell_instanceC value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "InGameMenuBehavior"} jproto))
    (JR/superInit this (BaseMenuBehavior/jnew_0))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instanceC)))))
    
(set jm_onDisplayChangeEvent (fn jm_onDisplayChangeEvent [this _allBinaryGameCanvas _displayChangeEvent]
        (:jm_updateMenuFromEvent _allBinaryGameCanvas _displayChangeEvent)))
    
(set jm_initSpecialPaint (fn jm_initSpecialPaint [this _allBinaryGameCanvas]
        (:jm_setNonBotPaintableP _allBinaryGameCanvas (GameCanvasNonBotPaintable/jnew_1 _allBinaryGameCanvas))))
    
(set jm_initMenu (fn jm_initMenu [this _allBinaryGameCanvas]
        (:jm_initMenu2 _allBinaryGameCanvas)))
    
(set jm_updateMenu (fn jm_updateMenu [this _allBinaryGameCanvas]
        (:jm_initMenu2 _allBinaryGameCanvas)))
    
(set jm_popupMenu (fn jm_popupMenu [this _allBinaryGameCanvas]
        (:jm_popupMenu2 _allBinaryGameCanvas)))
    
(set jm_closeMenu (fn jm_closeMenu [this _allBinaryGameCanvas]
        (:jm_closeMenu2 _allBinaryGameCanvas)))

(set jproto (table/setproto @{:jm_onDisplayChangeEvent jm_onDisplayChangeEvent :jm_initSpecialPaint jm_initSpecialPaint :jm_initMenu jm_initMenu :jm_updateMenu jm_updateMenu :jm_popupMenu jm_popupMenu :jm_closeMenu jm_closeMenu} BaseMenuBehavior/jproto))


