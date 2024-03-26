--ej2prac2

hd :: [a] -> a --retorna el primer elemento de una lista.
hd (x:xs) = x

tl :: [a] -> [a] --retorna toda la lista menos el primer elemento.
tl (x:xs) = xs

ls :: [a] -> a --retorna el  último elemento de la lista.
ls (x:xs) = hd(reverse(x:xs))

iniit :: [a] -> [a] --retorna toda la lista menos el  ́ultimo elemento.
iniit (x:xs) = reverse(tl(reverse(x:xs)))


--ej3prac2
--Defina una funcion maximo de tres, tal que maxTres x y z es el maximo
--valor entre x, y, z . Por ejemplo: maxTres 6 7 4 = 7.


-- ej4prac2
--Defina las siguientes operaciones sobre listas (vistas en el teorico):
--concatenar, tomar, tirar y C.

-- recibe 1 lista, devuelve 2 listas concatenadas
--concatenar :: [a] -> [a] -> [a]
--concatenar [] [] = []
--concatenar [] as = as
--concatenar bs [] = bs
--concatenar (b:bs) as = b : (conc bs as)

--toma los n primeros elementos de una lista
tomar :: Int -> [a] -> [a] 
tomar n [] = []
tomar 0 (x:xs) = []
tomar n (x:xs) = (x:(tomar(n-1))xs)  

--tirar ::


-- ej5prac2
ab :: Int -> Int 
ab x | x > 0 = x
     | x == 0 = 0
     | x < 0 = x * (-1)
     
    

--act 6 prac 2

--Defina una funcion edad :: (Int,Int,Int) -> (Int,Int,Int) -> Int
--que dada dos fechas indica los a ̃nos transcurridos entre ellas. 
--Por ejemplo: edad (20,10,1968) (30,4,1987) = 18

edad :: (Int,Int,Int) -> (Int,Int,Int) -> Int
edad (x1,y1,z1) (x2,y2,z2) |z1 == z2 = 0 
                           |z1 > z2 && y1 > y2 = z1 - z2
                           |z1 > z2 && y1 < y2 = z1 - z2 - 1
                           |z1 > z2 && y1 == y2 && x1 > x2 = z1 - z2 
                           |z1 > z2 && y1 == y2 && x1 < x2 = z1 - z2 - 1
                           |z1 > z2 && y1 == y2 && x1 == x2 = z1 - z2   
                           |z1 < z2 && y1 < y2 = z2 - z1
                           |z1 < z2 && y1 > y2 = z2 - z1 - 1
                           |z1 < z2 && y1 == y2 && x1 < x2 = z2 - z1 
                           |z1 < z2 && y1 == y2 && x1 > x2 = z2 - z1 - 1
                           |z1 < z2 && y1 == y2 && x1 == x2 = z2 - z1

--La disyunción excluyente xor de dos formulas se verifica si una es verdadera
--y la otra es falsa. Defina la funcion xor que calcule la disyuncion excluyente a
--partir de la tabla de verdad.
-- Ahora defina la funcion xor2 que calcule la disyuncion excluyente pero sin
--que considere todos los posibles valores de las entradas. Cual sera la diferencias
--entre ambas definiciones?

-- comienzo acá
-- ejercicio 8: Defina una función que dado un número natural decida si el mismo es primo o no.
-- usamos una función auxiliar que devuelve los divisores de un número
divs :: Int -> [Int]
divs n = [x | x <- [1..n], mod n x == 0]

-- luego vemos que, si tiene 2 o menos divisores, entonces será primo
primo :: Int -> Bool
primo x = length (divs x) <= 2

-- ejercicio 9: Defina una función que dado un número natural n retorne la lista de todos los números naturales primos menores que n.

-- reutilizamos la función primo para calcular los primos menores que el valor n ingresado
primosMenores :: Int -> [Int]
primosMenores n = [x | x <- [1..n], primo x]

-- ejercicio 10: Defina una función que dada una lista retorne la reversa de la misma.

reversa :: [a] -> [a]
reversa [] = []
reversa (x:xs) = reversa xs ++ [x]

-- ejercicio 11: Defina una función que dada una lista de números retorne una lista con los primos.

primosEnLista :: [Int] -> [Int]
primosEnLista [] = []
primosEnLista (x:xs) = [x | x <- (x:xs), primo x]

-- ejercicio 11: Defina una función que dada una lista decida si es palíndromo o no.
-- palindromos :: (Eq a) => [a] -> Bool

