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
# package org.allbinary.graphics.color

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- CircularIndexUtil/jm_createInstance [& args] (JR/call jfile "../../../../org/allbinary/util/CircularIndexUtil" "jm_createInstance" args))

# Java class BasicColorArrayIndexer
(var jproto nil)
(var jnew_1 nil)
(var jm_next nil)
(var jm_get nil)
(var jm_getBasicColorArray nil)

    
(set jnew_1 (fn jnew_1 [_basicColorArray]
    (var this (table/setproto @{:jclass "BasicColorArrayIndexer" :f_basicColorArray nil :f_circularIndexUtil nil} jproto))
    
    
        (set (this :f_basicColorArray) _basicColorArray)
        (set (this :f_circularIndexUtil) (CircularIndexUtil/jm_createInstance (length (this :f_basicColorArray))))
    this))
    
(set jm_next (fn jm_next [this]
        (:jm_next (this :f_circularIndexUtil))))
    
(set jm_get (fn jm_get [this]
    (label jreturn
        (return jreturn ((this :f_basicColorArray) (:jm_getIndex (this :f_circularIndexUtil)))))))
    
(set jm_getBasicColorArray (fn jm_getBasicColorArray [this]
    (label jreturn
        (return jreturn (this :f_basicColorArray)))))

(set jproto @{:jm_next jm_next :jm_get jm_get :jm_getBasicColorArray jm_getBasicColorArray})


