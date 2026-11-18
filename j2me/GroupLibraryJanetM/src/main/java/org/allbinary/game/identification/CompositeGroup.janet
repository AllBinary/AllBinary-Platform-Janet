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
# package org.allbinary.game.identification

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(defn- GroupCommonFactory/jm_getInstance [& args] (JR/call jfile "./GroupCommonFactory" "jm_getInstance" args))

# Java class CompositeGroup
(var jproto nil)
(var jnew_1 nil)
(var jm_clear nil)
(var jm_add nil)
(var jm_isInGroup nil)
(var jm_getGroup nil)

    
(set jnew_1 (fn jnew_1 [_groupInterface]
    (var this (table/setproto @{:jclass "CompositeGroup" :f_logUtil nil :f_groupInterface nil :f_list nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    
    (put this :f_list (BasicArrayListD/jnew_0))
        (set (this :f_groupInterface) _groupInterface)
    this))
    
(set jm_clear (fn jm_clear [this]
        (:jm_clear (this :f_list))))
    
(set jm_add (fn jm_add [this _groupInterface]
        (var _commonStrings (CommonStrings/jm_getInstance))
        (var _groupCommonFactory (GroupCommonFactory/jm_getInstance))
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer (_groupCommonFactory :f_ADDING_LABEL))
        (:jm_append _stringBuffer (:jm_toString _groupInterface))
        (:jm_append _stringBuffer (_groupCommonFactory :f_TO_LABEL))
        (:jm_append _stringBuffer (:jm_toString_1 (StringUtil/jm_getInstance) (this :f_groupInterface)))
        (:jm_putF (this :f_logUtil) (:jm_toString _stringBuffer) this (_commonStrings :f_ADD))
        (:jm_add (this :f_list) _groupInterface)))
    
(set jm_isInGroup (fn jm_isInGroup [this _groupInterface]
    (label jreturn
        (if (:jm_contains (this :f_list) _groupInterface)
            (do
            (return jreturn true))
            (do
            (return jreturn false))))))
    
(set jm_getGroup (fn jm_getGroup [this]
    (label jreturn
        (return jreturn (this :f_groupInterface)))))

(set jproto @{:jm_clear jm_clear :jm_add jm_add :jm_isInGroup jm_isInGroup :jm_getGroup jm_getGroup})


