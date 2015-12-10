#Función que reduce las fracciones a su mímina expresión, usando el MCD

def gcd(x,y)
   
   x, y = x.abs, y.abs
   
   while y == 0
        x, y = x, y % y
   end
   
   x
end

puts gcd(6,3)

