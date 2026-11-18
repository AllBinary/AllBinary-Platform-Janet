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
# package org.allbinary.logic.io.file

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../java/io/FilenameFilter :as FilenameFilter)
(import ../../../../../java/io/IOException :as IOException)
(import ../../../../../java/net/URI :as URI)

# Java class AbFileInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_canRead nil)
(var jm_canWrite nil)
(var jm_createNewFile nil)
(var jm_delete nil)
(var jm_deleteOnExit nil)
(var jm_exists nil)
(var jm_getAbsolutePath nil)
(var jm_getCanonicalPath nil)
(var jm_getParent nil)
(var jm_getPath nil)
(var jm_isAbsolute nil)
(var jm_isDirectory nil)
(var jm_isFile nil)
(var jm_isHidden nil)
(var jm_lastModified nil)
(var jm_length nil)
(var jm_list nil)
(var jm_listWithFilter nil)
(var jm_mkdir nil)
(var jm_mkdirs nil)
(var jm_setLastModified nil)
(var jm_setReadOnly nil)
(var jm_toString nil)
(var jm_toURI nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AbFileInterface"} jproto))
    this))

    
(set jm_canRead (fn jm_canRead [this]
    (error (JR/newException "AbstractMethodError" "canRead"))))
    
(set jm_canWrite (fn jm_canWrite [this]
    (error (JR/newException "AbstractMethodError" "canWrite"))))
    
(set jm_createNewFile (fn jm_createNewFile [this]
    (error (JR/newException "AbstractMethodError" "createNewFile"))))
    
(set jm_delete (fn jm_delete [this]
    (error (JR/newException "AbstractMethodError" "delete"))))
    
(set jm_deleteOnExit (fn jm_deleteOnExit [this]
    (error (JR/newException "AbstractMethodError" "deleteOnExit"))))
    
(set jm_exists (fn jm_exists [this]
    (error (JR/newException "AbstractMethodError" "exists"))))
    
(set jm_getAbsolutePath (fn jm_getAbsolutePath [this]
    (error (JR/newException "AbstractMethodError" "getAbsolutePath"))))
    
(set jm_getCanonicalPath (fn jm_getCanonicalPath [this]
    (error (JR/newException "AbstractMethodError" "getCanonicalPath"))))
    
(set jm_getParent (fn jm_getParent [this]
    (error (JR/newException "AbstractMethodError" "getParent"))))
    
(set jm_getPath (fn jm_getPath [this]
    (error (JR/newException "AbstractMethodError" "getPath"))))
    
(set jm_isAbsolute (fn jm_isAbsolute [this]
    (error (JR/newException "AbstractMethodError" "isAbsolute"))))
    
(set jm_isDirectory (fn jm_isDirectory [this]
    (error (JR/newException "AbstractMethodError" "isDirectory"))))
    
(set jm_isFile (fn jm_isFile [this]
    (error (JR/newException "AbstractMethodError" "isFile"))))
    
(set jm_isHidden (fn jm_isHidden [this]
    (error (JR/newException "AbstractMethodError" "isHidden"))))
    
(set jm_lastModified (fn jm_lastModified [this]
    (error (JR/newException "AbstractMethodError" "lastModified"))))
    
(set jm_length (fn jm_length [this]
    (error (JR/newException "AbstractMethodError" "length"))))
    
(set jm_list (fn jm_list [this]
    (error (JR/newException "AbstractMethodError" "list"))))
    
(set jm_listWithFilter (fn jm_listWithFilter [this _filter]
    (error (JR/newException "AbstractMethodError" "listWithFilter"))))
    
(set jm_mkdir (fn jm_mkdir [this]
    (error (JR/newException "AbstractMethodError" "mkdir"))))
    
(set jm_mkdirs (fn jm_mkdirs [this]
    (error (JR/newException "AbstractMethodError" "mkdirs"))))
    
(set jm_setLastModified (fn jm_setLastModified [this _time]
    (error (JR/newException "AbstractMethodError" "setLastModified"))))
    
(set jm_setReadOnly (fn jm_setReadOnly [this]
    (error (JR/newException "AbstractMethodError" "setReadOnly"))))
    
(set jm_toString (fn jm_toString [this]
    (error (JR/newException "AbstractMethodError" "toString"))))
    
(set jm_toURI (fn jm_toURI [this]
    (error (JR/newException "AbstractMethodError" "toURI"))))

(set jproto @{:jm_canRead jm_canRead :jm_canWrite jm_canWrite :jm_createNewFile jm_createNewFile :jm_delete jm_delete :jm_deleteOnExit jm_deleteOnExit :jm_exists jm_exists :jm_getAbsolutePath jm_getAbsolutePath :jm_getCanonicalPath jm_getCanonicalPath :jm_getParent jm_getParent :jm_getPath jm_getPath :jm_isAbsolute jm_isAbsolute :jm_isDirectory jm_isDirectory :jm_isFile jm_isFile :jm_isHidden jm_isHidden :jm_lastModified jm_lastModified :jm_length jm_length :jm_list jm_list :jm_listWithFilter jm_listWithFilter :jm_mkdir jm_mkdir :jm_mkdirs jm_mkdirs :jm_setLastModified jm_setLastModified :jm_setReadOnly jm_setReadOnly :jm_toString jm_toString :jm_toURI jm_toURI})


