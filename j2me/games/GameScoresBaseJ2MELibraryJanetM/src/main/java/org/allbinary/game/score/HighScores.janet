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
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))

# Java class HighScores
(var jproto nil)
(var jnew_3 nil)
(var jm_setList nil)
(var jm_getList nil)
(var jm_getName nil)
(var jm_getTotal nil)
(var jm_addHighScore nil)
(var jm_getHeading nil)
(var jm_getColumnOneHeading nil)
(var jm_getColumnTwoHeading nil)
(var jm_isBestScore nil)
(var jm_toString nil)

    
(set jnew_3 (fn jnew_3 [_name _heading _columnTwoHeading]
    (var this (table/setproto @{:jclass "HighScores" :f_orderedHighScoresList nil :f_name nil :f_heading nil :f_columnOneHeading nil :f_columnTwoHeading nil} jproto))
    (put this :f_orderedHighScoresList (BasicArrayListD/jnew_0))
    
    
    (put this :f_columnOneHeading "Name")
    
        (set (this :f_name) _name)
        (set (this :f_heading) _heading)
        (set (this :f_columnTwoHeading) _columnTwoHeading)
    this))
    
(set jm_setList (fn jm_setList [this _orderedHighScoresList]
        (set (this :f_orderedHighScoresList) _orderedHighScoresList)))
    
(set jm_getList (fn jm_getList [this]
    (label jreturn
        (return jreturn (this :f_orderedHighScoresList)))))
    
(set jm_getName (fn jm_getName [this]
    (label jreturn
        (return jreturn (this :f_name)))))
    
(set jm_getTotal (fn jm_getTotal [this]
    (label jreturn
        (return jreturn (:jm_size (:jm_getList this))))))
    
(set jm_addHighScore (fn jm_addHighScore [this _newHighScore]
        (:jm_add (this :f_orderedHighScoresList) _newHighScore)))
    
(set jm_getHeading (fn jm_getHeading [this]
    (label jreturn
        (return jreturn (this :f_heading)))))
    
(set jm_getColumnOneHeading (fn jm_getColumnOneHeading [this]
    (label jreturn
        (return jreturn (this :f_columnOneHeading)))))
    
(set jm_getColumnTwoHeading (fn jm_getColumnTwoHeading [this]
    (label jreturn
        (return jreturn (this :f_columnTwoHeading)))))
    
(set jm_isBestScore (fn jm_isBestScore [this _newHighScore]
    (label jreturn
        (return jreturn false))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer "HighScores: ")
        (:jm_append _stringBuffer (this :f_heading))
        (:jm_append _stringBuffer ((CommonSeps/jm_getInstance) :f_SPACE))
        (:jm_append _stringBuffer ((CommonLabels/jm_getInstance) :f_TOTAL_LABEL))
        (:jm_appendint _stringBuffer (:jm_size (this :f_orderedHighScoresList)))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto @{:jm_setList jm_setList :jm_getList jm_getList :jm_getName jm_getName :jm_getTotal jm_getTotal :jm_addHighScore jm_addHighScore :jm_getHeading jm_getHeading :jm_getColumnOneHeading jm_getColumnOneHeading :jm_getColumnTwoHeading jm_getColumnTwoHeading :jm_isBestScore jm_isBestScore :jm_toString jm_toString})


