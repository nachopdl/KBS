; Regla 1: iPhone 16 con Banamex Oro ofrece 24 meses sin intereses
(defrule regla-iphone16-banamex
    (orden (smartphone (marca apple) (modelo iPhone16)) (metodo-pago banamex))
    =>
    (printout t "Oferta: 24 meses sin intereses para iPhone 16 con tarjeta Banamex Oro." crlf))

; Regla 2: Samsung Note21 con Liverpool VISA ofrece 12 meses sin intereses
(defrule regla-note21-liverpool
    (orden (smartphone (marca samsung) (modelo note21)) (metodo-pago liverpool))
    =>
    (printout t "Oferta: 12 meses sin intereses para Samsung Note21 con tarjeta Liverpool VISA." crlf))

; Regla 3: Al contado, MacBook Air + iPhone16, 100 pesos en vales por cada 1000
(defrule regla-macbookair-iphone16
    (orden (smartphone (marca apple) (modelo iPhone16))
           (computador (marca apple) (modelo macbookair))
           (metodo-pago contado))
    =>
    (bind ?total (+ 35000 27000))
    (bind ?vales (/ ?total 1000))
    (printout t "Oferta: " ?vales " vales de descuento aplicados por compra de MacBook Air e iPhone16." crlf))

; Regla 4: Compra de Smartphone aplica 15% de descuento en funda y mica
(defrule regla-smartphone-accesorios
    (orden (smartphone ?))
    =>
    (printout t "Descuento: 15% en funda y mica al comprar un smartphone." crlf))

; Regla 5: Identificar tipo de cliente según cantidad
(defrule regla-tipo-cliente
    (orden (cantidad ?qty))
    (test (< ?qty 10))
    =>
    (printout t "El cliente es: Menudista." crlf))

(defrule regla-tipo-cliente-mayorista
    (orden (cantidad ?qty))
    (test (>= ?qty 10))
    =>
    (printout t "El cliente es: Mayorista." crlf))
