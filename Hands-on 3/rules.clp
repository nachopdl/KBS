; Reglas
(defrule consulta-por-sintomas
    (enfermedad (nombre ?nombre) (signos-sintomas $?lista-sintomas&:(member$ fiebre $?)))
    =>
    (printout t "La enfermedad " ?nombre " incluye fiebre como síntoma." crlf))

(defrule consulta-tipo
    (enfermedad (nombre ?nombre) (tipo viral))
    =>
    (printout t "La enfermedad " ?nombre " es de tipo viral." crlf))

; Funciones
; Agregar enfermedad
(deffunction agregar-enfermedad (?nombre ?tipo ?signos-sintomas)
    (assert (enfermedad (nombre ?nombre) (tipo ?tipo) (signos-sintomas ?signos-sintomas)))
    (printout t "Enfermedad agregada: " ?nombre crlf))

; Actualizar enfermedad
(deffunction actualizar-enfermedad (?nombre ?nuevo-tipo ?nuevos-signos-sintomas)
    (retract ?fact-id)
    (assert (enfermedad (nombre ?nombre) (tipo ?nuevo-tipo) (signos-sintomas ?nuevos-signos-sintomas)))
    (printout t "Enfermedad actualizada: " ?nombre crlf))

; Borrar enfermedad
(deffunction borrar-enfermedad (?nombre)
    (retract ?fact-id)
    (printout t "Enfermedad eliminada: " ?nombre crlf))
