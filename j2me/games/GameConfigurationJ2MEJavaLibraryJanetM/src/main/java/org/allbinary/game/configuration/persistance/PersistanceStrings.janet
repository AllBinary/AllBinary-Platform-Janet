# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.game.configuration.persistance

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class PersistanceStrings
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
    (var this (table/setproto @{:jclass "PersistanceStrings" :f_SAVING nil :f_NUMBER_OF_RECORDS nil :f_LOADING_ID nil :f_LOAD_ALL nil :f_DELETING_WITH_ID nil :f_CLOSING_RECORDSTORE nil :f_NOT_SAVING nil :f_ERROR_LOADING nil :f_ERROR_LOADING_ID nil :f_ID nil :f_GAME_ACTION_INPUT nil} jproto))
    (put this :f_SAVING "Saving: ")
    (put this :f_NUMBER_OF_RECORDS "Number of records: ")
    (put this :f_LOADING_ID "Loading data with id: ")
    (put this :f_LOAD_ALL "loadAll")
    (put this :f_DELETING_WITH_ID "Deleting data with id: ")
    (put this :f_CLOSING_RECORDSTORE "Closing RecordStore")
    (put this :f_NOT_SAVING "Not Saving: ")
    (put this :f_ERROR_LOADING "Error Loading gameActionInput: ")
    (put this :f_ERROR_LOADING_ID "Error Loading id: ")
    (put this :f_ID " id: ")
    (put this :f_GAME_ACTION_INPUT " GameActionInput: ")
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{})


