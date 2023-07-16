trellis = poly2trellis(3, {'1+x+x^2', '1+x^2'})

%x = ones(100,1);
data = randi([0 1],10,1);
%data

code = convenc(data,trellis);
%code

%code = convenc(ones(100,1),trellis);
%tb = 2;
%decoded = vitdec(code,trellis,tb,'trunc','hard');
%decoded
%isequal(decoded, data)

code([1,2])

function s = Viterbi(code)
    state = 'A'
    state = 'B'
    state = 'C'
    state = 'D'
    
    A = zeros(4, 10)
    
    
    function f = forward(code)
        state = 'A'
        for t = 1:10
            if(state == 'A');
                if(code([2*i-1, 2*i]) == [1,0] );
                    A(3, i) + 1
                    A(1, i) + 1
                end
                    
                if(code([2*i-1, 2*i]) == [0,1] );
                    A(3, i) + 1
                    A(1, i) + 1
                end 

                
                    
                if(code([2*i-1, 2*i]) == [1,1] );
                    A(3, i) + 0
                    A(1, i) + 2
                    state = 'C'

                    val = 0
                end
                if(code([2*i-1, 2*i]) == [0,0] );
                    A(3, i) + 2
                    A(1, i) + 0
                    
                    state = 'A'
                    val = 0
                end
            end      
                    
                   
            if(state == 'B');
                if(code([2*i-1, 2*i]) == [1,1] );
                    A(3, i) + 2
                    A(1, i) + 0
                    
                    state = 'A'
                end
                if(code([2*i-1, 2*i]) == [0,0] );
                    A(3, i) + 0
                    A(1, i) + 2
                    
                    state = 'C'

                end

                
                if(code([2*i-1, 2*i]) == [1,0] );
                    A(3, i) + 1
                    A(1, i) + 1
                
                end
                
                if(code([2*i-1, 2*i]) == [0,1] );
                    A(3, i) + 1
                    A(1, i) + 1
                end
            end
            
            
            
            if(state == 'C');
                if(code([2*i-1, 2*i]) == [1,0] );
                    A(2, i) + 0
                    A(4, i) + 2
                    state = 'B'
                end
                if(code([2*i-1, 2*i]) == [0,1] );
                    A(2, i) + 2
                    A(4, i) + 0
                    state = 'D'
                end
                if(code([2*i-1, 2*i]) == [0,0] );
                    A(2, i) + 1
                    A(4, i) + 1
                    state = 'B'
                end
                if(code([2*i-1, 2*i]) == [1,1] );
                    A(2, i) + 1
                    A(4, i) + 1
                    state = 'D'
                end
            end
            
            
            
            if(state == 'D');
                if(code([2*i-1, 2*i]) == [1,0] );
                    A(2, i) + 2
                    A(4, i) + 0
                    state = 'D'
                end
                if(code([2*i-1, 2*i]) == [0,1] );
                    A(2, i) + 0
                    A(4, i) + 2
                    state = 'B'
                end
                if(code([2*i-1, 2*i]) == [0,0] );
                    A(2, i) + 1
                    A(4, i) + 1
                    state = 'D'
                end
                if(code([2*i-1, 2*i]) == [1,1] );
                    A(2, i) + 1
                    A(4, i) + 1
                    state = 'B'
                end
            end
            
            
    
            
            
            
        end
    end
    function b = backward(code)
        A(
    
    end

end
