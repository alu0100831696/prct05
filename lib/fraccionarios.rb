class Fraccionarios
    
attr_reader :num, :denom   #Inicializar 

#Minimiza la fracción a su expresión mínima
def gcd(x,y)
    y == 0 ? x: gcd(y, x%y)
end
#Mínimo común múltiplo
def mcm(x,y)
    z = x / gcd(x,y) * y
end

#Inicializar objetos que recibe por terminal.
def initialize(num,denom)
    
    @num, @denom = num.to_i, denom.to_i
    
end

#devuelve una cadena con la representación del racional
def to_s
    "#@num/#@denom"
end

#Devuelve como flotante
def to_f
    @num/@denom
    
end

#Toma los valores de la segunda fracción
def == (other)
	  @num == other.num && @denom == other.denom
end

#Suma

def + (other)
    
    m = mcm(@denom, other.denom)
    nA = @num * m / @denom
    nB = other.num * m / other.denom
    Fraccionarios.new(nA + nB, m)
 
end

#Resta
def - (other)

    m = mcm(@denom, other.denom)
    nA = @num * m / other.denom
    nB = other.num * m /other.denom
    Fraccionarios.new(nA - nB, m)
    
end

#Multiplicación

def * (other)
    
    nA = @num * other.num
    nB = @denom * other.denom
    Fraccionarios.new(nA, nB)
end 

#División

def / (other)
  
  nA = @num * other.denom
  nB = @denom * other.num
  
  Fraccionarios.new(nA, nB)
    
end

#Valor Absoluto

def abs
    
    Fraccionarios.new(@num.abs, @denom)
    
end 

end    