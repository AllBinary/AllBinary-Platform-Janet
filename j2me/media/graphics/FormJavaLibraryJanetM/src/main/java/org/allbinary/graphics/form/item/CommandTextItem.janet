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
# package org.allbinary.graphics.form.item

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./ABTextItem :as ABTextItem)

# Java class CommandTextItem
(var jproto nil)
(var jnew_5 nil)
(var jm_isFocusable nil)
(var jm_getCommand nil)

    
(set jnew_5 (fn jnew_5 [_command _layout _altText _backgroundBasicColor _foregroundBasicColor]
    (var this (table/setproto @{:jclass "CommandTextItem" :f_command nil} jproto))
    
        (JR/superInit this (ABTextItem/jnew_5 (:jm_getLabel _command) _layout _altText _backgroundBasicColor _foregroundBasicColor))
        (set (this :f_command) _command)
    this))
    
(set jm_isFocusable (fn jm_isFocusable [this]
    (label jreturn
        (return jreturn true))))
    
(set jm_getCommand (fn jm_getCommand [this]
    (label jreturn
        (return jreturn (this :f_command)))))

(set jproto (table/setproto @{:jm_isFocusable jm_isFocusable :jm_getCommand jm_getCommand} ABTextItem/jproto))


