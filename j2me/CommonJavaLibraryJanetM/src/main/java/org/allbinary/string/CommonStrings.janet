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

# Java class CommonStrings
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
    (var this (table/setproto @{:jclass "CommonStrings" :f_EMPTY nil :f_CREATE_IMAGE nil :f_PLEASE_WAIT nil :f_PLEASE_WAIT_FOR_SERVER nil :f_PERIODS nil :f_LOADING nil :f_CONSTRUCTOR nil :f_START nil :f_END nil :f_EXCEPTION nil :f_EXCEPTION_LABEL nil :f_CLEANUP nil :f_INIT nil :f_CLOSE nil :f_UP nil :f_DOWN nil :f_LEFT nil :f_RIGHT nil :f_DIRECTION_NAME nil :f_CREATE nil :f_REMOVE nil :f_UPDATE nil :f_DELETE nil :f_delete nil :f_LOAD nil :f_SAVE nil :f_ADD nil :f_DROP nil :f_INSERT nil :f_VISIT nil :f_START_METHOD_NAME nil :f_END_METHOD_NAME nil :f_GET nil :f_PROCESS nil :f_GET_INSTANCE nil :f_GET_LIST nil :f_RUN nil :f_START_RUNNABLE nil :f_RUNNING nil :f_END_RUNNABLE nil :f_DISABLE nil :f_ENABLE nil :f_SUCCESS nil :f_FAILURE nil :f_NOT_IMPLEMENTED nil :f_UNKNOWN nil :f_ON_EVENT nil :f_IS_VALID nil :f_TOSTRING nil :f_ADD_LISTENER nil :f_REMOVE_LISTENER nil :f_SIZE nil} jproto))
    (put this :f_EMPTY "Empty")
    (put this :f_CREATE_IMAGE "createImage")
    (put this :f_PLEASE_WAIT "Please Wait")
    (put this :f_PLEASE_WAIT_FOR_SERVER "Please Wait Getting Data From Server...")
    (put this :f_PERIODS "...")
    (put this :f_LOADING "Loading...")
    (put this :f_CONSTRUCTOR "Constructor")
    (put this :f_START "Start")
    (put this :f_END "End")
    (put this :f_EXCEPTION "Exception")
    (put this :f_EXCEPTION_LABEL "Exception: ")
    (put this :f_CLEANUP "cleanup")
    (put this :f_INIT "init")
    (put this :f_CLOSE "close")
    (put this :f_UP "up")
    (put this :f_DOWN "down")
    (put this :f_LEFT "left")
    (put this :f_RIGHT "right")
    (put this :f_DIRECTION_NAME @[(this :f_DOWN) (this :f_LEFT) (this :f_RIGHT) (this :f_UP)])
    (put this :f_CREATE "Create")
    (put this :f_REMOVE "Remove")
    (put this :f_UPDATE "Update")
    (put this :f_DELETE "Delete")
    (put this :f_delete "delete")
    (put this :f_LOAD "load")
    (put this :f_SAVE "save")
    (put this :f_ADD "Add")
    (put this :f_DROP "Drop")
    (put this :f_INSERT "Insert")
    (put this :f_VISIT "visit")
    (put this :f_START_METHOD_NAME (this :f_START))
    (put this :f_END_METHOD_NAME "end")
    (put this :f_GET "get")
    (put this :f_PROCESS "process")
    (put this :f_GET_INSTANCE "getInstance")
    (put this :f_GET_LIST "getList")
    (put this :f_RUN "run")
    (put this :f_START_RUNNABLE "Start Runnable")
    (put this :f_RUNNING "Running")
    (put this :f_END_RUNNABLE "End Runnable")
    (put this :f_DISABLE "disable")
    (put this :f_ENABLE "enable")
    (put this :f_SUCCESS "Command Success")
    (put this :f_FAILURE "Command Failed")
    (put this :f_NOT_IMPLEMENTED "Not Implemented")
    (put this :f_UNKNOWN "Unknown")
    (put this :f_ON_EVENT "onEvent")
    (put this :f_IS_VALID "isValid")
    (put this :f_TOSTRING "toString")
    (put this :f_ADD_LISTENER "addListener")
    (put this :f_REMOVE_LISTENER "removeListener")
    (put this :f_SIZE "size")
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{})


