# Generated Code Do Not Modify
# package org.allbinary.graphics.form

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./CustomDisplayable :as CustomDisplayable)

# Java class CustomScreen
(var jproto nil)
(var jnew_0 nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "CustomScreen"} jproto))
    (JR/superInit this (CustomDisplayable/jnew_0))
    this))


(set jproto (table/setproto @{} CustomDisplayable/jproto))


