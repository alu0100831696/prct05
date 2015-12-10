require '~/workspace/prct05/fraccionarios.rb'
require 'test/unit'

class TestFraccionarios < Test::Unit::TestCase
    
    def setup
       
       @fraccion_1 = Fraccionarios.new(3, 4)
        @fraccion_2 = Fraccionarios.new(15, 2)
         @fraccion_3 = Fraccionarios.new(35,5)
          @fraccion_4 = Fraccionarios.new(13,6)
           @fraccion_5 = Fraccionarios.new(25,16)
           @fraccion_6 = Fraccionarios.new(16,35)
           @fraccion_7 = Fraccionarios.new(-12,-5)
           @fraccion_8 = Fraccionarios.new(2,5)
           
           @suma = Fraccionarios.new(18, 4)
           @resta = Fraccionarios.new(29, 6)
           @producto = Fraccionarios.new(3, 1)
           @division = Fraccionarios.new(875, 256)
           @abso = Fraccionarios.new(12,5)
    end 
    
    def tear_down
       #nothing 
    end
 
    def tb_to_s
       
        assert_equal(@fraccion_1, @fraccion_1.to_s)
        assert_equal(@fraccion_7, @fraccion_7.to_s)
         
    end
    
    def tb_suma
       
       assert_equal(@suma, @fraccion1 + @fraccion2)
        
    end
    
    def tb_resta
        assert_equal(@resta, @fraccion3 - @fraccion4)
        
    end
    
    def tb_producto
        assert_equal(@producto, @fraccion2*@fraccion8)
        
    end
    
    def tb_divide
        
         assert_equal(@division, @fraccion5/@fraccion6)
        
    end
   
    def tb_absoluto
        
         assert_equal(@abso, @fraccion7)
        
    end
 
end