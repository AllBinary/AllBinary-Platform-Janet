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
# package org.allbinary.canvas

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(import ./BaseGameStatistics :as BaseGameStatistics)

#ActualPlatform
# Java class GameStatisticsFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_add nil)
(var jm_toString nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameStatisticsFactory" :f_stringBuffer nil} jproto))
    (put this :f_stringBuffer (StringMaker/jnew_0))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_add (fn jm_add [this _string]
        (if (> (:jm_length (this :f_stringBuffer)) 12000)
            (do
            (:jm_delete (this :f_stringBuffer) 0 (:jm_length (this :f_stringBuffer)))
            (:jm_append (this :f_stringBuffer) "Old Stats Cleared")))
        (:jm_append (this :f_stringBuffer) _string)))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (return jreturn (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) (BaseGameStatistics/jm_toString this)) (:jm_toString (this :f_stringBuffer))))))))

(set jproto (table/setproto @{:jm_add jm_add :jm_toString jm_toString} BaseGameStatistics/jproto))


