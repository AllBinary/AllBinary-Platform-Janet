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
# package org.allbinary.graphics.form

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./ItemIndexDx :as ItemIndexDx)

# Java class ScrollSelectionFormTempHorizontalDx
(var jproto nil)
(var jnew_1 nil)
(var jm_getDx nil)

    
(set jnew_1 (fn jnew_1 [_scrollSelectionForm]
    (var this (table/setproto @{:jclass "ScrollSelectionFormTempHorizontalDx" :f_scrollSelectionForm nil} jproto))
    
    (JR/superInit this (ItemIndexDx/jnew_0))
        (set (this :f_scrollSelectionForm) _scrollSelectionForm)
    this))
    
(set jm_getDx (fn jm_getDx [this _index _item _dx _dy]
    (label jreturn
        (return jreturn (:jm_getSelectedIndexForPointTempHorizontalDx (this :f_scrollSelectionForm) _index _item _dx _dy)))))

(set jproto (table/setproto @{:jm_getDx jm_getDx} ItemIndexDx/jproto))


