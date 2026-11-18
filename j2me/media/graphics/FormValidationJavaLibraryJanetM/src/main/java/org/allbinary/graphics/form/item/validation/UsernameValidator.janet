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
# package org.allbinary.graphics.form.item.validation

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./TextFieldItemValidator :as TextFieldItemValidator)

# Java class UsernameValidator
(var jproto nil)
(var jnew_4 nil)

    
(set jnew_4 (fn jnew_4 [_textFieldItem _min _max _allowOnEmpty]
    (var this (table/setproto @{:jclass "UsernameValidator"} jproto))
        (JR/superInit this (TextFieldItemValidator/jnew_4 _textFieldItem _min _max _allowOnEmpty))
    this))

(set jproto (table/setproto @{} TextFieldItemValidator/jproto))


