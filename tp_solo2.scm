;funciones auxiliares definicion array
(define array-asoc-etiqueta 'array-asociativo)
(define (array-asoc-crea) (list array-asoc-etiqueta))
;nil
(define nil 'nil)


(define obtener_clave
  (lambda (par)
    (car par)))
(define agrega-reemplaza
  (lambda (array clave valor)
    (if (equal? array '())
        (list (list clave valor))
    (if (equal? (car array) array-asoc-etiqueta)
        (list array-asoc-etiqueta (agrega-reemplaza (cdr array) clave valor))
        (if (equal? (obtener_clave (car array)) clave)
            (cons (cons clave valor) (cdr array))
            (append (car array)
                  (agrega-reemplaza (cdr array) clave valor)))))))


(agrega-reemplaza
(agrega-reemplaza (array-asoc-crea) #\a 97)
#t 'boolean)
(agrega-reemplaza (array-asoc-crea) 8.6 '(racket rkt))
;array 1

(define array-1
(agrega-reemplaza
(agrega-reemplaza (array-asoc-crea) 8.6 '(racket rkt))
5.07 '(prolog pl)))
;array 2
(define array-2
(agrega-reemplaza
(agrega-reemplaza
(agrega-reemplaza
(agrega-reemplaza
(agrega-reemplaza (array-asoc-crea) #\a 97)
#t 'boolean)
#f 'boolean)
+ "suma")
'() "lista vacia"))
;array 3
(define array-3
(agrega-reemplaza
(agrega-reemplaza (array-asoc-crea) "impar" odd?)
"ultimo" (lambda (lista) (car (reverse lista)))))
array-2