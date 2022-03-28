(deffacts inicio
         (robot (name R1) (maxcajas 0) (cajas 0)( a 3))
         (almacen (name A1) (fruta naranja) (cajas 2))
         (almacen (name A2) (fruta manzana) (cajas 6))
         (almacen (name A3) (fruta caqui) (cajas 1))
         (almacen (name A4) (fruta uva) (cajas 12))
)

(deffacts almacenes-frutas
         (almacen (fruta naranja))
         (almacen (fruta manzana))
         (almacen (fruta caqui))
         (almacen (fruta uva))
)

(defrule coger-almacen-naranjas
         (robot (name ?name&:(= ?name R1)) (maxcajas ?maxcajas&:(< ?maxcajas ?a)) (cajas ?cajas))
         (almacen (name ?name2&:(= ?name2 A1)) (cajas ?cajas2&:(<= ?cajas2 20)))
   =>
         (modify ?name (maxcajas (+ ?maxcajas 1)) (cajas (+ ?cajas 1)))
         (modify ?name2 (cajas (- ?cajas2 1)))
)



(defrule coger-almacen-manzanas
         (robot (name ?name&:(= ?name R1)) (maxcajas ?maxcajas&:(< ?maxcajas ?a)) (cajas ?cajas))
         (almacen (name ?name2&:(= ?name2 A2)) (cajas ?cajas2&:(<= ?cajas2 20)))
   =>
         (modify ?name (maxcajas (+ ?maxcajas 1)) (cajas (+ ?cajas 1)))
         (modify ?name2 (cajas (- ?cajas2 1)))
)


(defrule coger-almacen-caquis
         (robot (name ?name&:(= ?name R1)) (maxcajas ?maxcajas&:(< ?maxcajas ?a)) (cajas ?cajas))
         (almacen (name ?name2&:(= ?name2 A3)) (cajas ?cajas2&:(<= ?cajas2 20)))
   =>
         (modify ?name (maxcajas (+ ?maxcajas 1)) (cajas (+ ?cajas 1)))
         (modify ?name2 (cajas (- ?cajas2 1)))
)

(defrule coger-almacen-uvas
         (robot (name ?name&:(= ?name R1)) (maxcajas ?maxcajas&:(< ?maxcajas ?a)) (cajas ?cajas))
         (almacen (name ?name2&:(= ?name2 A4)) (cajas ?cajas2&:(<= ?cajas2 20)))
   =>
         (modify ?name (maxcajas (+ ?maxcajas 1)) (cajas (+ ?cajas 1)))
         (modify ?name2 (cajas (- ?cajas2 1)))
)


(defrule entregar-caja-naranjas
         (robot (name ?name&:(= ?name R1)) (maxcajas ?maxcajas&:(< ?maxcajas ?a)) (cajas ?cajas))
         (almacen (name ?name2&:(= ?name2 A1)) (cajas ?cajas2&:(<= ?cajas2 20)))
   =>
         (modify ?name (maxcajas (+ ?maxcajas 1)) (cajas (- ?cajas 1)))
         (modify ?name2 (cajas (+ ?cajas2 1)))
)

(defrule entregar-caja-manzanas
         (robot (name ?name&:(= ?name R1)) (maxcajas ?maxcajas&:(< ?maxcajas ?a)) (cajas ?cajas))
         (almacen (name ?name2&:(= ?name2 A2)) (cajas ?cajas2&:(<= ?cajas2 20)))
   =>
         (modify ?name (maxcajas (+ ?maxcajas 1)) (cajas (- ?cajas 1)))
         (modify ?name2 (cajas (+ ?cajas2 1)))
)

(defrule entregar-caja-caquis
         (robot (name ?name&:(= ?name R1)) (maxcajas ?maxcajas&:(< ?maxcajas ?a)) (cajas ?cajas))
         (almacen (name ?name2&:(= ?name2 A3)) (cajas ?cajas2&:(<= ?cajas2 20)))
   =>
         (modify ?name (maxcajas (+ ?maxcajas 1)) (cajas (- ?cajas 1)))
         (modify ?name2 (cajas (+ ?cajas2 1)))
)

(defrule entregar-caja-uvas
         (robot (name ?name&:(= ?name R1)) (maxcajas ?maxcajas&:(< ?maxcajas ?a)) (cajas ?cajas))
         (almacen (name ?name2&:(= ?name2 A4)) (cajas ?cajas2&:(<= ?cajas2 20)))
   =>
         (modify ?name (maxcajas (+ ?maxcajas 1)) (cajas (- ?cajas 1)))
         (modify ?name2 (cajas (+ ?cajas2 1)))
)















