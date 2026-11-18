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
# package org.allbinary.graphics

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../org/allbinary/graph/V :as V)
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))

# Java class CellPosition
(var jproto nil)
(var jnew_4 nil)
(var jm_getColumn nil)
(var jm_getRow nil)
(var jm_toString nil)
(var jm_toStringCellPosition nil)
(var jm_toStringColRow nil)
(var jm_getId nil)

    
(set jnew_4 (fn jnew_4 [_column _row _columns _rows]
    (var this (table/setproto @{:jclass "CellPosition" :f_id 0 :f_column 0 :f_row 0} jproto))
    
    
    
    (JR/superInit this (V/jnew_0))
        (set (this :f_column) _column)
        (set (this :f_row) _row)
        (set (this :f_id) (JR/i32 (+ (JR/i32 (* _row _columns)) _column)))
    this))
    
(set jm_getColumn (fn jm_getColumn [this]
    (label jreturn
        (return jreturn (this :f_column)))))
    
(set jm_getRow (fn jm_getRow [this]
    (label jreturn
        (return jreturn (this :f_row)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (return jreturn (jm_toStringColRow (:jm_getColumn this) (:jm_getRow this))))))
    
(set jm_toStringCellPosition (fn jm_toStringCellPosition [_basicGeographicMapCellPosition]
    (label jreturn
        (return jreturn (jm_toStringColRow (:jm_getColumn _basicGeographicMapCellPosition) (:jm_getRow _basicGeographicMapCellPosition))))))
    
(set jm_toStringColRow (fn jm_toStringColRow [_i_column _i_row]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (var _commonSeps (CommonSeps/jm_getInstance))
        (:jm_append _stringBuffer (_commonSeps :f_PARENTHESIS_OPEN))
        (:jm_appendint _stringBuffer _i_column)
        (:jm_append _stringBuffer (_commonSeps :f_COMMA))
        (:jm_appendint _stringBuffer _i_row)
        (:jm_append _stringBuffer (_commonSeps :f_PARENTHESIS_CLOSE))
        (return jreturn (:jm_toString _stringBuffer)))))
    
(set jm_getId (fn jm_getId [this]
    (label jreturn
        (return jreturn (this :f_id)))))

(set jproto (table/setproto @{:jm_getColumn jm_getColumn :jm_getRow jm_getRow :jm_toString jm_toString :jm_getId jm_getId} V/jproto))


