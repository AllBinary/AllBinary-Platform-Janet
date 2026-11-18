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
(import ./ItemPaintableFactory :as ItemPaintableFactory)
(defn- LockablePaintable/jnew_1 [& args] (JR/call jfile "./LockablePaintable" "jnew_1" args))

# Java class LockableFormPaintableFactory
(var jproto nil)
(var jnew_1 nil)
(var jm_getInstanceItemPaintable nil)

    
(set jnew_1 (fn jnew_1 [_lockedIndex]
    (var this (table/setproto @{:jclass "LockableFormPaintableFactory" :f_lockedIndex 0} jproto))
    
    (JR/superInit this (ItemPaintableFactory/jnew_0))
        (set (this :f_lockedIndex) _lockedIndex)
    this))
    
(set jm_getInstanceItemPaintable (fn jm_getInstanceItemPaintable [this _paintableForm]
    (label jreturn
        (return jreturn (LockablePaintable/jnew_1 (this :f_lockedIndex))))))

(set jproto (table/setproto @{:jm_getInstanceItemPaintable jm_getInstanceItemPaintable} ItemPaintableFactory/jproto))


