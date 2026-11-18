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
# package org.allbinary.view.event

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../org/allbinary/logic/util/event/AllBinaryEventObject :as AllBinaryEventObject)

# Java class ViewPositionEvent
(var jproto nil)
(var jnew_1 nil)

    
(set jnew_1 (fn jnew_1 [_anyType]
    (var this (table/setproto @{:jclass "ViewPositionEvent"} jproto))
        (JR/superInit this (AllBinaryEventObject/jnew_1 _anyType))
    this))

(set jproto (table/setproto @{} AllBinaryEventObject/jproto))


