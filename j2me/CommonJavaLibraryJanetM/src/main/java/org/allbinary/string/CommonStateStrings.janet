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

# Java class CommonStateStrings
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "CommonStateStrings" :f_CONTEXT nil :f_FINISH nil :f_CREATE nil :f_START nil :f_RESTART nil :f_RESUME nil :f_PAUSE nil :f_STOP nil :f_DESTROY nil :f_BIND nil :f_ON_SAVE_INSTANCE_STATE nil :f_ON_START_COMMAND nil} jproto))
    (put this :f_CONTEXT "Context: ")
    (put this :f_FINISH "finish")
    (put this :f_CREATE "onCreate")
    (put this :f_START "onStart")
    (put this :f_RESTART "onRestart")
    (put this :f_RESUME "onResume")
    (put this :f_PAUSE "onPause")
    (put this :f_STOP "onStop")
    (put this :f_DESTROY "onDestroy")
    (put this :f_BIND "onBind")
    (put this :f_ON_SAVE_INSTANCE_STATE "onSaveInstanceState")
    (put this :f_ON_START_COMMAND "onStartCommand")
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{})


