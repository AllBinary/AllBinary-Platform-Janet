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
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- Group/jnew_2 [& args] (JR/call jfile "./Group" "jnew_2" args))

# Java class BasicGroupFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "BasicGroupFactory" :f_NAME nil :f_NO_SUCH_GROUP nil :f_GOOD nil :f_ENEMY nil :f_ENEMY_ON_LEVEL nil :f_NONE nil :f_GOOD_ARRAY nil :f_ENEMY_ARRAY nil :f_ENEMY_ON_LEVEL_ARRAY nil :f_NONE_ARRAY nil} jproto))
    (put this :f_NAME "GROUP_NAME")
    (put this :f_NO_SUCH_GROUP "No Such Group: ")
    (put this :f_GOOD (Group/jnew_2 "Good Guys" (JR/i16 0)))
    (put this :f_ENEMY (Group/jnew_2 "Bad Guys" (JR/i16 1)))
    (put this :f_ENEMY_ON_LEVEL (Group/jnew_2 "Bad Guys on Level" (JR/i16 2)))
    (put this :f_NONE (Group/jnew_2 "Not On A Team" (JR/i16 3)))
    (put this :f_GOOD_ARRAY @[(this :f_GOOD)])
    (put this :f_ENEMY_ARRAY @[(this :f_ENEMY)])
    (put this :f_ENEMY_ON_LEVEL_ARRAY @[(this :f_ENEMY) (this :f_ENEMY_ON_LEVEL)])
    (put this :f_NONE_ARRAY @[(this :f_NONE)])
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (if (= (jstatic_instance) ((NullUtil/jm_getInstance) :f_NULL_OBJECT))
            (do
            (set jcell_instance (jnew_0))))
        (return jreturn (jstatic_instance)))))

(set jproto @{})


