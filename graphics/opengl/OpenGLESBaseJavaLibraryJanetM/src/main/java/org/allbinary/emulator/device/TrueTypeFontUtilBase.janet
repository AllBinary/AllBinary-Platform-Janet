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
# package org.allbinary.emulator.device

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Font/jm_getDefaultFont [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Font" "jm_getDefaultFont" args))
(defn- AvianUtil/jm_isAvian [& args] (JR/call jfile "../../../../org/allbinary/AvianUtil" "jm_isAvian" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))

# Java class TrueTypeFontUtilBase
(var jproto nil)
(var jnew_1 nil)
(var jm_getAsTextureSize nil)
(var jm_getCellSize nil)
(var jm_getYOffset nil)

    
(set jnew_1 (fn jnew_1 [_scale]
    (var this (table/setproto @{:jclass "TrueTypeFontUtilBase" :f_shortPattern nil :f_patternAsBytes nil :f_pattern nil :f_charArray nil :f__characterWidth nil :f_characterArray nil :f_size 0 :f_lastCapIndex 0 :f_currentFont nil :f_scale 0 :f_CELLS_PER_ROW 0 :f_fontSize 0 :f_baseCharWidth 0 :f_cellSize 0 :f_textureSize 0 :f_actualCellsPerRow 0} jproto))
    
    (put this :f_patternAsBytes @[32 48 49 50 51 52 53 54 55 56 57 65 66 32 32 32 67 68 69 70 71 72 73 74 75 76 77 78 79 32 32 32 80 81 82 83 84 85 86 87 88 89 90 97 98 32 32 32 99 100 101 102 103 104 105 106 107 108 109 110 111 32 32 32 112 113 114 115 116 117 118 119 120 121 122 46 63 32 32 32 33 36 37 96 (JR/i8 (JR/i32 (- 62))) (JR/i8 (JR/i32 (- 84))) (JR/i8 (JR/i32 (- 62))) (JR/i8 (JR/i32 (- 84))) 34 (JR/i8 (JR/i32 (- 62))) (JR/i8 (JR/i32 (- 93))) (JR/i8 (JR/i32 (- 62))) (JR/i8 (JR/i32 (- 93))) 94 38 42 40 32 32 32 41 95 43 45 61 91 93 123 125 59 39 35 58 32 32 32 64 126 44 47 60 62 92 124 (JR/i8 (JR/i32 (- 62))) (JR/i8 (JR/i32 (- 82))) (JR/i8 (JR/i32 (- 62))) (JR/i8 (JR/i32 (- 82))) (JR/i8 (JR/i32 (- 62))) (JR/i8 (JR/i32 (- 87))) (JR/i8 (JR/i32 (- 62))) (JR/i8 (JR/i32 (- 87)))])
    (put this :f_pattern (this :f_patternAsBytes))
    (put this :f_charArray @[0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x6f 0x50 0x56 0x6b 0x51 0x52 0x5a 0x6a 0x5c 0x60 0x5b 0x62 0x72 0x63 0x4b 0x73 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xa 0x6c 0x69 0x74 0x64 0x75 0x4c 0x70 0xb 0xc 0x10 0x11 0x12 0x13 0x14 0x15 0x16 0x17 0x18 0x19 0x1a 0x1b 0x1c 0x20 0x21 0x22 0x23 0x24 0x25 0x26 0x27 0x28 0x29 0x2a 0x65 0x76 0x66 0x59 0x61 0x53 0x2b 0x2c 0x30 0x31 0x32 0x33 0x34 0x35 0x36 0x37 0x38 0x39 0x3a 0x3b 0x3c 0x40 0x41 0x42 0x43 0x44 0x45 0x46 0x47 0x48 0x49 0x4a 0x67 0x77 0x68 0x71 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x58 0x0 0x0 0x0 0x0 0x0 0x7b 0x0 0x0 0x55 0x0 0x79 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0])
    (put this :f__characterWidth (array/new-filled (length (this :f_pattern)) 0))
    (put this :f_characterArray (array/new-filled 1 0))
    (put this :f_size (length (this :f_pattern)))
    (put this :f_lastCapIndex (JR/indexOf (this :f_pattern) (get "Z" 0)))
    (put this :f_currentFont (Font/jm_getDefaultFont))
    
    
    
    
    
    
    
        (var _shortPattern ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
        (if (AvianUtil/jm_isAvian)
            (do
            (var _shortPatterAsByteArray @[32 48 49 50 51 52 53 54 55 56 57 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 46 63 33 36 37 96 (JR/i8 (JR/i32 (- 62))) (JR/i8 (JR/i32 (- 84))) (JR/i8 (JR/i32 (- 62))) (JR/i8 (JR/i32 (- 84))) 34 (JR/i8 (JR/i32 (- 62))) (JR/i8 (JR/i32 (- 93))) (JR/i8 (JR/i32 (- 62))) (JR/i8 (JR/i32 (- 93))) 94 38 42 40 41 95 43 45 61 91 93 123 125 59 39 35 58 64 126 44 47 60 62 92 124 (JR/i8 (JR/i32 (- 62))) (JR/i8 (JR/i32 (- 82))) (JR/i8 (JR/i32 (- 62))) (JR/i8 (JR/i32 (- 82))) (JR/i8 (JR/i32 (- 62))) (JR/i8 (JR/i32 (- 87))) (JR/i8 (JR/i32 (- 62))) (JR/i8 (JR/i32 (- 87)))])
            (set _shortPattern _shortPatterAsByteArray))
            (do
            (var _shortPatterAsByteArray @[32 48 49 50 51 52 53 54 55 56 57 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 46 63 33 36 37 96 (JR/i8 (JR/i32 (- 62))) (JR/i8 (JR/i32 (- 84))) 34 (JR/i8 (JR/i32 (- 62))) (JR/i8 (JR/i32 (- 93))) 94 38 42 40 41 95 43 45 61 91 93 123 125 59 39 35 58 64 126 44 47 60 62 92 124 (JR/i8 (JR/i32 (- 62))) (JR/i8 (JR/i32 (- 82))) (JR/i8 (JR/i32 (- 62))) (JR/i8 (JR/i32 (- 87)))])
            (set _shortPattern _shortPatterAsByteArray)))
        (set (this :f_shortPattern) _shortPattern)
        (set (this :f_scale) _scale)
        (set (this :f_CELLS_PER_ROW) 16)
        (set (this :f_fontSize) (JR/i32 (* (JR/i32 (+ 20 6)) (this :f_scale))))
        (set (this :f_baseCharWidth) (JR/i32 (+ (this :f_fontSize) (JR/i32 (* 6 (this :f_scale))))))
        (set (this :f_cellSize) (JR/i32 (+ (this :f_fontSize) (JR/i32 (* 6 (this :f_scale))))))
        (set (this :f_textureSize) (:jm_getAsTextureSize this (JR/i32 (* (this :f_CELLS_PER_ROW) (this :f_cellSize)))))
        (set (this :f_actualCellsPerRow) (JR/idiv (this :f_textureSize) (this :f_cellSize)))
    this))
    
(set jm_getAsTextureSize (fn jm_getAsTextureSize [this _textureSize]
    (var _textureSize _textureSize)
    (label jreturn
        (if (<= _textureSize 64)
            (do
            (set _textureSize 64))
            (if (<= _textureSize 128)
            (do
            (set _textureSize 128))
            (if (<= _textureSize 256)
            (do
            (set _textureSize 256))
            (if (<= _textureSize 512)
            (do
            (set _textureSize 512))
            (if (<= _textureSize 1024)
            (do
            (set _textureSize 1024)))))))
        (return jreturn _textureSize))))
    
(set jm_getCellSize (fn jm_getCellSize [this _cellSize]
    (var _cellSize _cellSize)
    (label jreturn
        (if (<= _cellSize 16)
            (do
            (set _cellSize 16))
            (if (<= _cellSize 32)
            (do
            (set _cellSize 32))
            (if (<= _cellSize 64)
            (do
            (set _cellSize 64))
            (if (<= _cellSize 128)
            (do
            (set _cellSize 128))
            (if (<= _cellSize 256)
            (do
            (set _cellSize 256)))))))
        (return jreturn _cellSize))))
    
(set jm_getYOffset (fn jm_getYOffset [this]
    (label jreturn
        (return jreturn (JR/i32 (* (JR/i32 (- (this :f_scale) 1)) (this :f_cellSize)))))))

(set jproto @{:jm_getAsTextureSize jm_getAsTextureSize :jm_getCellSize jm_getCellSize :jm_getYOffset jm_getYOffset})


