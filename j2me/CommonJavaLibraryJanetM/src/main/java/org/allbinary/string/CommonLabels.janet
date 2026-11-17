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
# package org.allbinary.string

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class CommonLabels
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "CommonLabels" :f_WIDTH_LABEL nil :f_HEIGHT_LABEL nil :f_END_LABEL nil :f_TOTAL_LABEL nil :f_INDEX_LABEL nil :f_START_LABEL nil :f_COMMAND_LABEL nil :f_NAME_LABEL nil :f_START nil :f_ELAPSED nil :f_CURRENT nil :f_NEXT nil :f_ITEM_LABEL nil :f_RESULT_ nil :f_COLON_SEP nil} jproto))
    (put this :f_WIDTH_LABEL " Width: ")
    (put this :f_HEIGHT_LABEL " Height: ")
    (put this :f_END_LABEL "End: ")
    (put this :f_TOTAL_LABEL "Total: ")
    (put this :f_INDEX_LABEL "index: ")
    (put this :f_START_LABEL "Start: ")
    (put this :f_COMMAND_LABEL "Command: ")
    (put this :f_NAME_LABEL "Name: ")
    (put this :f_START (this :f_START_LABEL))
    (put this :f_ELAPSED " Elapsed: ")
    (put this :f_CURRENT " Current: ")
    (put this :f_NEXT "Next")
    (put this :f_ITEM_LABEL "Item: ")
    (put this :f_RESULT_ "Result: ")
    (put this :f_COLON_SEP ": ")
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{})


