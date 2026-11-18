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
# package org.allbinary.game.score

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Command/jnew_4 [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Command" "jnew_4" args))
(defn- Command/jstatic_SCREEN [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Command" "jstatic_SCREEN" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))

# Java class HighScoreCommands
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "HighScoreCommands" :f_DISPLAY nil :f_PERSONAL nil :f_WORLD nil} jproto))
    (put this :f_DISPLAY (Command/jnew_4 "Scores" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 1))
    (put this :f_PERSONAL (Command/jnew_4 "Personal" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 1))
    (put this :f_WORLD (Command/jnew_4 "World" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 1))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{})


