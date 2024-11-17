(deftemplate smartphone
    (slot marca)
    (slot modelo)
    (slot color)
    (slot precio)
    (slot stock))

(deftemplate computador
    (slot marca)
    (slot modelo)
    (slot color)
    (slot precio)
    (slot stock))

(deftemplate accesorio
    (slot tipo)
    (slot marca)
    (slot precio)
    (slot descuento))

(deftemplate cliente
    (slot nombre)
    (slot tipo) ; menudista/mayorista
    (slot compras))

(deftemplate orden
    (slot smartphone)
    (slot computador)
    (slot accesorios)
    (slot metodo-pago)
    (slot cantidad))

(deftemplate tarjetacred
    (slot banco)
    (slot grupo)
    (slot exp-date))

(deftemplate vale
    (slot valor)
    (slot cliente))
