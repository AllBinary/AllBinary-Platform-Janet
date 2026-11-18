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
# package org.allbinary.game.displayable.canvas

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class PopupMenuInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_popupMenu nil)
(var jm_closeMenu nil)
(var jm_toggleMenu nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PopupMenuInterface"} jproto))
    this))

    
(set jm_popupMenu (fn jm_popupMenu [this]
    (error (JR/newException "AbstractMethodError" "popupMenu"))))
    
(set jm_closeMenu (fn jm_closeMenu [this]
    (error (JR/newException "AbstractMethodError" "closeMenu"))))
    
(set jm_toggleMenu (fn jm_toggleMenu [this]
    (error (JR/newException "AbstractMethodError" "toggleMenu"))))

(set jproto @{:jm_popupMenu jm_popupMenu :jm_closeMenu jm_closeMenu :jm_toggleMenu jm_toggleMenu})


