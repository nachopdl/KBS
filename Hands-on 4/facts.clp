; Smartphones
(deffacts smartphones
(smartphone (marca apple) (modelo iPhone16) (color rojo) (precio 27000) (stock 50))
(smartphone (marca samsung) (modelo note21) (color negro) (precio 22000) (stock 30))
)

; Computadoras
(deffacts computadoras
(computador (marca apple) (modelo macbookpro) (color gris) (precio 47000) (stock 20))
(computador (marca apple) (modelo macbookair) (color plateado) (precio 35000) (stock 15))
)

; Accesorios
(deffacts accesorios
(accesorio (tipo funda) (marca generica) (precio 500) (descuento 15))
(accesorio (tipo mica) (marca generica) (precio 200) (descuento 15))
)

; Tarjetas
(deffacts tarjetas
(tarjetacred (banco banamex) (grupo oro) (exp-date 01-12-23))
(tarjetacred (banco liverpool) (grupo visa) (exp-date 01-06-24))
)

; Clientes
(deffacts clientes
(cliente (nombre Juan) (tipo mayorista) (compras 0))
(cliente (nombre Maria) (tipo menudista) (compras 0))
)
