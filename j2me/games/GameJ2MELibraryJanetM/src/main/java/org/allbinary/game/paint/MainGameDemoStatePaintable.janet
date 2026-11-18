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
# package org.allbinary.game.paint

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../org/allbinary/graphics/paint/Paintable :as Paintable)

# Java class MainGameDemoStatePaintable
(var jproto nil)
(var jnew_2 nil)
(var jm_paint nil)
(var jm_getOwnershipPaintableInterface nil)
(var jm_getMenuPaintableInterface nil)

    
(set jnew_2 (fn jnew_2 [_ownershipPaintableInterface _menuPaintableInterface]
    (var this (table/setproto @{:jclass "MainGameDemoStatePaintable" :f_ownershipPaintableInterface nil :f_menuPaintableInterface nil} jproto))
    
    
    (JR/superInit this (Paintable/jnew_0))
        (set (this :f_ownershipPaintableInterface) _ownershipPaintableInterface)
        (set (this :f_menuPaintableInterface) _menuPaintableInterface)
    this))
    
(set jm_paint (fn jm_paint [this _graphics]
        (:jm_paint (this :f_menuPaintableInterface) _graphics)
        (:jm_paint (this :f_ownershipPaintableInterface) _graphics)))
    
(set jm_getOwnershipPaintableInterface (fn jm_getOwnershipPaintableInterface [this]
    (label jreturn
        (return jreturn (this :f_ownershipPaintableInterface)))))
    
(set jm_getMenuPaintableInterface (fn jm_getMenuPaintableInterface [this]
    (label jreturn
        (return jreturn (this :f_menuPaintableInterface)))))

(set jproto (table/setproto @{:jm_paint jm_paint :jm_getOwnershipPaintableInterface jm_getOwnershipPaintableInterface :jm_getMenuPaintableInterface jm_getMenuPaintableInterface} Paintable/jproto))


