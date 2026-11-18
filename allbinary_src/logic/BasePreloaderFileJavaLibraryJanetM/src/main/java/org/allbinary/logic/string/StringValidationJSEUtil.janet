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
# package org.allbinary.logic.string

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../java/lang/Character :as Character)

# Java class StringValidationJSEUtil
(var jproto nil)
(var jnew_0 nil)
(var jm_isBlank nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "StringValidationJSEUtil"} jproto))
    this))
    
(set jm_isBlank (fn jm_isBlank [_string]
    (label jreturn
        (var _len (length _string))
        (do
            (var _i 0)
            (while (< _i _len)
                (do
            (var _c (get _string _i))
            (if (= (Character/jm_isWhitespace _c) false)
                (do
                (return jreturn false))))
                (do (set _i (JR/i32 (+ _i 1))))))
        (return jreturn true))))

(set jproto @{})


