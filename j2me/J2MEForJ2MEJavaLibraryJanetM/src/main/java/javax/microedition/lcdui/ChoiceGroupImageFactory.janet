# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package javax.microedition.lcdui

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- MIDPUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/MIDPUtil" "jm_getInstance" args))

# Java class ChoiceGroupImageFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getImageArray nil)
(var jm_init nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ChoiceGroupImageFactory" :f_multiOff nil :f_multiOn nil :f_radioOff nil :f_radioOn nil :f_midpUtil nil :f_imgMultiOffO nil :f_imgMultiOnO nil :f_imgRadioOffO nil :f_imgRadioOnO nil :f_imgMultiOff nil :f_imgMultiOn nil :f_imgRadioOff nil :f_imgRadioOn nil :f_imageArray nil} jproto))
    (put this :f_multiOff @[(JR/i8 (JR/i32 (- 119))) 80 78 71 13 10 26 10 0 0 0 13 73 72 68 82 0 0 0 10 0 0 0 11 2 3 0 0 0 59 0 (JR/i8 (JR/i32 (- 12))) (JR/i8 (JR/i32 (- 117))) 0 0 0 6 80 76 84 69 (JR/i8 (JR/i32 (- 1))) (JR/i8 (JR/i32 (- 1))) (JR/i8 (JR/i32 (- 1))) (JR/i8 (JR/i32 (- 69))) (JR/i8 (JR/i32 (- 69))) (JR/i8 (JR/i32 (- 69))) (JR/i8 (JR/i32 (- 57))) 75 (JR/i8 (JR/i32 (- 33))) (JR/i8 (JR/i32 (- 8))) 0 0 0 30 73 68 65 84 120 (JR/i8 (JR/i32 (- 38))) 99 96 96 96 96 12 101 (JR/i8 (JR/i32 (- 8))) (JR/i8 (JR/i32 (- 51))) (JR/i8 (JR/i32 (- 32))) (JR/i8 (JR/i32 (- 64))) 32 (JR/i8 (JR/i32 (- 64))) (JR/i8 (JR/i32 (- 60))) (JR/i8 (JR/i32 (- 64))) (JR/i8 (JR/i32 (- 64))) (JR/i8 (JR/i32 (- 128))) 11 51 (JR/i8 (JR/i32 (- 122))) 50 (JR/i8 (JR/i32 (- 4))) 6 0 63 116 3 1 53 (JR/i8 (JR/i32 (- 108))) 39 (JR/i8 (JR/i32 (- 26))) 0 0 0 0 73 69 78 68 (JR/i8 (JR/i32 (- 82))) 66 96 (JR/i8 (JR/i32 (- 126)))])
    (put this :f_multiOn @[(JR/i8 (JR/i32 (- 119))) 80 78 71 13 10 26 10 0 0 0 13 73 72 68 82 0 0 0 10 0 0 0 11 2 3 0 0 0 59 0 (JR/i8 (JR/i32 (- 12))) (JR/i8 (JR/i32 (- 117))) 0 0 0 12 80 76 84 69 (JR/i8 (JR/i32 (- 1))) (JR/i8 (JR/i32 (- 1))) (JR/i8 (JR/i32 (- 1))) (JR/i8 (JR/i32 (- 69))) (JR/i8 (JR/i32 (- 69))) (JR/i8 (JR/i32 (- 69))) 106 106 106 2 2 2 106 (JR/i8 (JR/i32 (- 103))) 14 (JR/i8 (JR/i32 (- 47))) 0 0 0 53 73 68 65 84 120 (JR/i8 (JR/i32 (- 38))) 99 96 96 124 (JR/i8 (JR/i32 (- 64))) (JR/i8 (JR/i32 (- 16))) (JR/i8 (JR/i32 (- 1))) (JR/i8 (JR/i32 (- 77))) 3 (JR/i8 (JR/i32 (- 45))) 65 (JR/i8 (JR/i32 (- 111))) 15 76 12 108 12 76 12 (JR/i8 (JR/i32 (- 4))) 12 76 12 18 12 76 (JR/i8 (JR/i32 (- 68))) 127 24 (JR/i8 (JR/i32 (- 104))) 126 45 96 96 (JR/i8 (JR/i32 (- 7))) (JR/i8 (JR/i32 (- 11))) (JR/i8 (JR/i32 (- 109))) (JR/i8 (JR/i32 (- 127))) (JR/i8 (JR/i32 (- 23))) (JR/i8 (JR/i32 (- 65))) 3 3 (JR/i8 (JR/i32 (- 29))) 127 (JR/i8 (JR/i32 (- 122))) (JR/i8 (JR/i32 (- 113))) 0 5 37 12 (JR/i8 (JR/i32 (- 34))) 1 (JR/i8 (JR/i32 (- 99))) (JR/i8 (JR/i32 (- 83))) 100 0 0 0 0 73 69 78 68 (JR/i8 (JR/i32 (- 82))) 66 96 (JR/i8 (JR/i32 (- 126)))])
    (put this :f_radioOff @[(JR/i8 (JR/i32 (- 119))) 80 78 71 13 10 26 10 0 0 0 13 73 72 68 82 0 0 0 11 0 0 0 11 2 3 0 0 0 (JR/i8 (JR/i32 (- 44))) (JR/i8 (JR/i32 (- 62))) (JR/i8 (JR/i32 (- 97))) (JR/i8 (JR/i32 (- 75))) 0 0 0 9 80 76 84 69 (JR/i8 (JR/i32 (- 1))) (JR/i8 (JR/i32 (- 1))) (JR/i8 (JR/i32 (- 1))) (JR/i8 (JR/i32 (- 69))) (JR/i8 (JR/i32 (- 69))) (JR/i8 (JR/i32 (- 69))) 106 106 106 (JR/i8 (JR/i32 (- 44))) 13 (JR/i8 (JR/i32 (- 1))) (JR/i8 (JR/i32 (- 24))) 0 0 0 42 73 68 65 84 120 (JR/i8 (JR/i32 (- 38))) 99 96 90 (JR/i8 (JR/i32 (- 59))) (JR/i8 (JR/i32 (- 64))) 32 (JR/i8 (JR/i32 (- 63))) 48 (JR/i8 (JR/i32 (- 127))) 65 (JR/i8 (JR/i32 (- 127))) 65 (JR/i8 (JR/i32 (- 127))) 41 (JR/i8 (JR/i32 (- 127))) (JR/i8 (JR/i32 (- 31))) 5 19 3 3 3 50 102 80 96 80 96 (JR/i8 (JR/i32 (- 6))) (JR/i8 (JR/i32 (- 63))) 80 (JR/i8 (JR/i32 (- 64))) (JR/i8 (JR/i32 (- 64))) (JR/i8 (JR/i32 (- 76))) (JR/i8 (JR/i32 (- 118))) 1 0 113 24 5 61 73 (JR/i8 (JR/i32 (- 68))) (JR/i8 (JR/i32 (- 100))) 98 0 0 0 0 73 69 78 68 (JR/i8 (JR/i32 (- 82))) 66 96 (JR/i8 (JR/i32 (- 126)))])
    (put this :f_radioOn @[(JR/i8 (JR/i32 (- 119))) 80 78 71 13 10 26 10 0 0 0 13 73 72 68 82 0 0 0 11 0 0 0 11 2 3 0 0 0 (JR/i8 (JR/i32 (- 44))) (JR/i8 (JR/i32 (- 62))) (JR/i8 (JR/i32 (- 97))) (JR/i8 (JR/i32 (- 75))) 0 0 0 12 80 76 84 69 (JR/i8 (JR/i32 (- 1))) (JR/i8 (JR/i32 (- 1))) (JR/i8 (JR/i32 (- 1))) (JR/i8 (JR/i32 (- 69))) (JR/i8 (JR/i32 (- 69))) (JR/i8 (JR/i32 (- 69))) 106 106 106 2 2 2 106 (JR/i8 (JR/i32 (- 103))) 14 (JR/i8 (JR/i32 (- 47))) 0 0 0 50 73 68 65 84 120 (JR/i8 (JR/i32 (- 38))) 5 (JR/i8 (JR/i32 (- 63))) 65 13 0 32 12 4 (JR/i8 (JR/i32 (- 63))) (JR/i8 (JR/i32 (- 19))) (JR/i8 (JR/i32 (- 11))) (JR/i8 (JR/i32 (- 117))) 1 18 68 (JR/i8 (JR/i32 (- 100))) 10 52 19 94 72 64 17 101 (JR/i8 (JR/i32 (- 122))) 44 (JR/i8 (JR/i32 (- 44))) (JR/i8 (JR/i32 (- 29))) 98 (JR/i8 (JR/i32 (- 52))) 89 77 (JR/i8 (JR/i32 (- 102))) 40 2 85 (JR/i8 (JR/i32 (- 95))) (JR/i8 (JR/i32 (- 73))) (JR/i8 (JR/i32 (- 63))) (JR/i8 (JR/i32 (- 104))) (JR/i8 (JR/i32 (- 63))) 37 (JR/i8 (JR/i32 (- 117))) 15 (JR/i8 (JR/i32 (- 40))) 119 10 41 78 26 (JR/i8 (JR/i32 (- 79))) 59 0 0 0 0 73 69 78 68 (JR/i8 (JR/i32 (- 82))) 66 96 (JR/i8 (JR/i32 (- 126)))])
    (put this :f_midpUtil (MIDPUtil/jm_getInstance))
    (put this :f_imgMultiOffO (:jm_createImageFromByteArray (this :f_midpUtil) (this :f_multiOff) 0 (length (this :f_multiOff))))
    (put this :f_imgMultiOnO (:jm_createImageFromByteArray (this :f_midpUtil) (this :f_multiOn) 0 (length (this :f_multiOn))))
    (put this :f_imgRadioOffO (:jm_createImageFromByteArray (this :f_midpUtil) (this :f_radioOff) 0 (length (this :f_radioOff))))
    (put this :f_imgRadioOnO (:jm_createImageFromByteArray (this :f_midpUtil) (this :f_radioOn) 0 (length (this :f_radioOn))))
    (put this :f_imgMultiOff (this :f_imgMultiOffO))
    (put this :f_imgMultiOn (this :f_imgMultiOnO))
    (put this :f_imgRadioOff (this :f_imgRadioOffO))
    (put this :f_imgRadioOn (this :f_imgRadioOnO))
    (put this :f_imageArray @[(this :f_imgMultiOff) (this :f_imgMultiOn) (this :f_imgRadioOff) (this :f_imgRadioOn)])
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getImageArray (fn jm_getImageArray [this]
    (label jreturn
        (return jreturn (this :f_imageArray)))))
    
(set jm_init (fn jm_init [this _imageArray]
        (set (this :f_imgMultiOff) (_imageArray 0))
        (set ((this :f_imageArray) 0) (this :f_imgMultiOff))
        (set (this :f_imgMultiOn) (_imageArray 1))
        (set ((this :f_imageArray) 1) (this :f_imgMultiOn))
        (set (this :f_imgRadioOff) (_imageArray 2))
        (set ((this :f_imageArray) 2) (this :f_imgRadioOff))
        (set (this :f_imgRadioOn) (_imageArray 3))
        (set ((this :f_imageArray) 3) (this :f_imgRadioOn))))

(set jproto @{:jm_getImageArray jm_getImageArray :jm_init jm_init})


