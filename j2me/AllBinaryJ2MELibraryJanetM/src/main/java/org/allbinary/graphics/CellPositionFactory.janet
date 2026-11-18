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
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- CellPosition/jnew_4 [& args] (JR/call jfile "./CellPosition" "jnew_4" args))

# Java class CellPositionFactory
(var jproto nil)
(var jcell_SINGLETON :jnone)
(var jstatic_SINGLETON nil)
(var jsetstatic_SINGLETON nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_init nil)
(var jm_getInstanceColRow nil)
(var jm_createInstance nil)
(var jm_getColumns nil)
(var jm_getRows nil)

(set jstatic_SINGLETON (fn jstatic_SINGLETON []
  (when (= jcell_SINGLETON :jnone) (set jcell_SINGLETON (jnew_0)))
  jcell_SINGLETON))
(set jsetstatic_SINGLETON (fn jsetstatic_SINGLETON [value] (set jcell_SINGLETON value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_SINGLETON)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "CellPositionFactory" :f_logUtil nil :f_NONE nil :f_cellPositionArray nil :f_columns 0 :f_rows 0} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_NONE (CellPosition/jnew_4 (JR/i32 (- 1)) (JR/i32 (- 1)) (JR/i32 (- 1)) (JR/i32 (- 1))))
    (put this :f_cellPositionArray (seq [jindex1 :range [0 0]] (array/new-filled 0 nil)))
    
    
    this))
    
(set jm_init (fn jm_init [this _columns _rows]
        (var _commonStrings (CommonStrings/jm_getInstance))
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer "Init: columns: ")
        (:jm_appendint _stringBuffer _columns)
        (:jm_append _stringBuffer " rows: ")
        (:jm_appendint _stringBuffer _rows)
        (:jm_putF (this :f_logUtil) (:jm_toString _stringBuffer) this (_commonStrings :f_INIT))
        (set (this :f_cellPositionArray) (seq [jindex1 :range [0 _columns]] (array/new-filled _rows nil)))
        (set (this :f_columns) _columns)
        (set (this :f_rows) _rows)
        (do
            (var _column 0)
            (while (< _column _columns)
                (do
            (do
                (var _row 0)
                (while (< _row _rows)
                    (do
                (:jm_createInstance this _column _row))
                    (do (set _row (JR/i32 (+ _row 1)))))))
                (do (set _column (JR/i32 (+ _column 1))))))))
    
(set jm_getInstanceColRow (fn jm_getInstanceColRow [this _i_column _i_row]
    (label jreturn
        (try
            (do
            (return jreturn (((this :f_cellPositionArray) _i_column) _i_row)))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put (this :f_logUtil) (:jm_toString (:jm_appendint (:jm_append (:jm_appendint (:jm_append (:jm_appendint (:jm_append (:jm_appendint (:jm_append (StringMaker/jnew_0) "columns: ") (:jm_getColumns this)) " rows: ") (:jm_getRows this)) " col: ") _i_column) " row: ") _i_row)) this (_commonStrings :f_GET_INSTANCE) _e)
            (return jreturn (this :f_NONE))))))))
    
(set jm_createInstance (fn jm_createInstance [this _i_column _i_row]
    (label jreturn
        (var _cellPositionCanBeNull (((this :f_cellPositionArray) _i_column) _i_row))
        (if (nil? _cellPositionCanBeNull)
            (do
            (set _cellPositionCanBeNull (CellPosition/jnew_4 _i_column _i_row (this :f_columns) (this :f_rows)))
            (set (((this :f_cellPositionArray) _i_column) _i_row) _cellPositionCanBeNull)))
        (return jreturn _cellPositionCanBeNull))))
    
(set jm_getColumns (fn jm_getColumns [this]
    (label jreturn
        (return jreturn (this :f_columns)))))
    
(set jm_getRows (fn jm_getRows [this]
    (label jreturn
        (return jreturn (this :f_rows)))))

(set jproto @{:jm_init jm_init :jm_getInstanceColRow jm_getInstanceColRow :jm_createInstance jm_createInstance :jm_getColumns jm_getColumns :jm_getRows jm_getRows})


