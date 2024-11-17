(defrule consulta-por-sintomas
    (enfermedad (nombre ?nombre) (signos-sintomas $?lista-sintomas&:(member$ fiebre $?)))
    =>
    (printout t "La enfermedad " ?nombre " incluye fiebre como síntoma." crlf))

(defrule consulta-tipo
    (enfermedad (nombre ?nombre) (tipo viral))
    =>
    (printout t "La enfermedad " ?nombre " es de tipo viral." crlf))
