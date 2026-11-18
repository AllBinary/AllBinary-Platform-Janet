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
# package org.allbinary.game.paint.help

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))

# Java class UpdateMyFontProperties
(var jproto nil)
(var jnew_0 nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "UpdateMyFontProperties" :f_actionStringArray nil :f_keymappingBeginWidthArray nil :f_actionStringDeltaXArray nil :f_inputDeltaXArray nil :f_sepArray nil :f_sepWidthArray nil :f_charHeight 0} jproto))
    (put this :f_actionStringArray (:jm_getArrayInstance (StringUtil/jm_getInstance)))
    (put this :f_keymappingBeginWidthArray ((NullUtil/jm_getInstance) :f_NULL_INT_ARRAY))
    (put this :f_actionStringDeltaXArray ((NullUtil/jm_getInstance) :f_NULL_INT_ARRAY))
    (put this :f_inputDeltaXArray ((NullUtil/jm_getInstance) :f_NULL_INT_ARRAY_ARRAY))
    (put this :f_sepArray ((StringUtil/jm_getInstance) :f_ONE_EMPTY_STRING_ARRAY_OF_ARRAYS))
    (put this :f_sepWidthArray ((NullUtil/jm_getInstance) :f_NULL_INT_ARRAY_ARRAY))
    
    this))


(set jproto @{})


