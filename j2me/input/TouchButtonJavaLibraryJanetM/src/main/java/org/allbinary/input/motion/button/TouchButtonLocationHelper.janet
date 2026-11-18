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
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonButtons/jm_getInstance [& args] (JR/call jfile "./CommonButtons" "jm_getInstance" args))

# Java class TouchButtonLocationHelper
(var jproto nil)
(var jnew_0 nil)
(var jm_getTotalColumns nil)
(var jm_getTotalRows nil)
(var jm_getColumnsRemainder nil)
(var jm_getRowsRemainder nil)
(var jm_getColumnsRemainderHalf nil)
(var jm_getRowsRemainderHalf nil)
(var jm_toString nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TouchButtonLocationHelper" :f_totalColumns 0 :f_totalRows 0 :f_columnsRemainder 0 :f_rowsRemainder 0 :f_columnsRemainderHalf 0 :f_rowsRemainderHalf 0} jproto))
    
    
    
    
    
    
        (var _buttonSize ((CommonButtons/jm_getInstance) :f_STANDARD_BUTTON_SIZE))
        (var _displayInfo (DisplayInfoSingleton/jm_getInstance))
        (set (this :f_totalColumns) (math/round (/ (:jm_getLastWidth _displayInfo) _buttonSize)))
        (set (this :f_totalRows) (math/round (/ (:jm_getLastHeight _displayInfo) _buttonSize)))
        (set (this :f_columnsRemainder) (% (:jm_getLastWidth _displayInfo) _buttonSize))
        (set (this :f_columnsRemainderHalf) (brshift (this :f_columnsRemainder) 1))
        (set (this :f_rowsRemainder) (% (:jm_getLastHeight _displayInfo) _buttonSize))
        (set (this :f_rowsRemainderHalf) (brshift (this :f_rowsRemainder) 1))
    this))
    
(set jm_getTotalColumns (fn jm_getTotalColumns [this]
    (label jreturn
        (return jreturn (this :f_totalColumns)))))
    
(set jm_getTotalRows (fn jm_getTotalRows [this]
    (label jreturn
        (return jreturn (this :f_totalRows)))))
    
(set jm_getColumnsRemainder (fn jm_getColumnsRemainder [this]
    (label jreturn
        (return jreturn (this :f_columnsRemainder)))))
    
(set jm_getRowsRemainder (fn jm_getRowsRemainder [this]
    (label jreturn
        (return jreturn (this :f_rowsRemainder)))))
    
(set jm_getColumnsRemainderHalf (fn jm_getColumnsRemainderHalf [this]
    (label jreturn
        (return jreturn (this :f_columnsRemainderHalf)))))
    
(set jm_getRowsRemainderHalf (fn jm_getRowsRemainderHalf [this]
    (label jreturn
        (return jreturn (this :f_rowsRemainderHalf)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer "totalColumns: ")
        (:jm_appendint _stringBuffer (this :f_totalColumns))
        (:jm_append _stringBuffer " totalRows: ")
        (:jm_appendint _stringBuffer (this :f_totalRows))
        (:jm_append _stringBuffer " columnsRemainder: ")
        (:jm_appendint _stringBuffer (this :f_columnsRemainder))
        (:jm_append _stringBuffer " rowsRemainder: ")
        (:jm_appendint _stringBuffer (this :f_rowsRemainder))
        (:jm_append _stringBuffer " columnsRemainderHalf: ")
        (:jm_appendint _stringBuffer (this :f_columnsRemainderHalf))
        (:jm_append _stringBuffer " rowsRemainderHalf: ")
        (:jm_appendint _stringBuffer (this :f_rowsRemainderHalf))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto @{:jm_getTotalColumns jm_getTotalColumns :jm_getTotalRows jm_getTotalRows :jm_getColumnsRemainder jm_getColumnsRemainder :jm_getRowsRemainder jm_getRowsRemainder :jm_getColumnsRemainderHalf jm_getColumnsRemainderHalf :jm_getRowsRemainderHalf jm_getRowsRemainderHalf :jm_toString jm_toString})


