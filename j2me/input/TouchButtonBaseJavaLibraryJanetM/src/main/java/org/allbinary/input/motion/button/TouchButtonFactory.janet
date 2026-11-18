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
# package org.allbinary.input.motion.button

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- BasicArrayListUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListUtil" "jm_getInstance" args))

# Java class TouchButtonFactory
(var jproto nil)
(var jcell_SINGLETON :jnone)
(var jstatic_SINGLETON nil)
(var jsetstatic_SINGLETON nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_defaultList nil)
(var jm_toggle nil)
(var jm_setList nil)
(var jm_getList nil)

(set jstatic_SINGLETON (fn jstatic_SINGLETON []
  (when (= jcell_SINGLETON :jnone) (set jcell_SINGLETON (jnew_0)))
  jcell_SINGLETON))
(set jsetstatic_SINGLETON (fn jsetstatic_SINGLETON [value] (set jcell_SINGLETON value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_SINGLETON)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TouchButtonFactory" :f_LIST nil :f_list nil :f_savedList nil :f_saved false} jproto))
    (put this :f_LIST (:jm_getImmutableInstance (BasicArrayListUtil/jm_getInstance)))
    (put this :f_list (this :f_LIST))
    (put this :f_savedList (this :f_LIST))
    (put this :f_saved false)
    this))
    
(set jm_defaultList (fn jm_defaultList [this]
        (set (this :f_list) (this :f_LIST))
        (:jm_toggle this false (this :f_LIST))))
    
(set jm_toggle (fn jm_toggle [this _save _list]
        (if (not= _list (:jm_getImmutableInstance (BasicArrayListUtil/jm_getInstance)))
            (do
            (set (this :f_savedList) _list)
            (if (not (this :f_saved))
                (do
                (set (this :f_list) (this :f_savedList)))))
            (do
            (if _save
                (do
                (if (not (this :f_saved))
                    (do
                    (set (this :f_saved) true)
                    (set (this :f_savedList) (this :f_list))
                    (set (this :f_list) (this :f_LIST)))
                    (do
                    nil)))
                (do
                (set (this :f_list) (this :f_savedList))
                (set (this :f_saved) false)))))))
    
(set jm_setList (fn jm_setList [this _list]
        (if (nil? _list)
            (do
            (error (JR/newException "Exception" "Null List"))))
        (set (this :f_list) _list)))
    
(set jm_getList (fn jm_getList [this]
    (label jreturn
        (return jreturn (this :f_list)))))

(set jproto @{:jm_defaultList jm_defaultList :jm_toggle jm_toggle :jm_setList jm_setList :jm_getList jm_getList})


