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

%code([1,2])

A = cell(40,1);

for t = 1:40
    if(mod(t,4) == 1);
        A{t} = (0);
    end
end

st = zeros(40, 1)

if(code([1, 2]) == [0,0] );
    if(A{5}.Data >= A{1}.Data);
        A{5} = dlnode(A{1}.Data)
        A{5} = A{1}.Next
    end
    if(A{6}.Data >= dlnode(A{1}.Data + 2).Data);
        A{6} = dlnode(A{1}.Data + 2)
        A{6} = A{1}.Next
    end
end

if(code([1, 2]) == [1,0] );
    if(A{5}.Data >= dlnode(A{1}.Data + 1).Data);
        A{5} = A{1}.Next
        A{5}.Data = A{1}.Data + 1
    end
    if(A{6}.Data >= dlnode(A{1}.Data + 1).Data);
        A{6} = A{1}.Next
        A{6} = dlnode(A{1}.Data + 1)
    end
end

if(code([1, 2]) == [0,1] );
    if(A{5}.Data >= dlnode(A{1}.Data + 1).Data);
        A{5} = A{1}.Next
        A{5}.Data = A{1}.Data + 1
    end
    if(A{6}.Data >= dlnode(A{1}.Data + 1).Data);
        A{6} = dlnode(A{1}.Data + 1)
        A{6} = A{1}.Next
    end
    
end

if(code([1, 2]) == [1,1] );
    if(A{5}.Data >= dlnode(A{1}.Data + 2).Data);
        A{5} = A{1}.Next
        A{5} = dlnode(A{1}.Data + 2)
    end
    if(A{6}.Data >= dlnode(A{1}.Data).Data);
        A{6} = A{1}.Next
        A{6} = dlnode(A{1}.Data)
    end
end


C{1} = NamedNode('one', 0)
C{2} = NamedNode('one', 0)
C{3} = NamedNode('one', 0)





if(code([3, 4]) == [0,0] );
    if(A{9}.Data >= A{5}.Data);
        A{9} = dlnode(A{5}.Data)
        A{9} = A{5}.Next
    end
    if(A{10}.Data >= dlnode(A{5}.Data + 2).Data);
        A{10} = dlnode(A{5}.Data + 2)
        A{10} = A{5}.Next
    end
    if(A{11}.Data >= A{6}.Data + 1);
        A{11} = dlnode(A{6}.Data + 1)
        A{11} = A{6}.Next
    end
    if(A{12}.Data >= dlnode(A{6}.Data).Data);
        A{12} = dlnode(A{6}.Data)
        A{12} = A{6}.Next
    end
end



if(code([3, 4]) == [0,1] );
    if(A{9}.Data >= A{5}.Data);
        A{9} = dlnode(A{5}.Data + 1)
        A{9} = A{5}.Next
    end
    if(A{10}.Data >= dlnode(A{5}.Data + 1).Data);
        A{10} = dlnode(A{5}.Data + 1)
        A{10} = A{5}.Next
    end
    if(A{11}.Data >= A{6}.Data + 2);
        A{11} = dlnode(A{6}.Data + 2)
        A{11} = A{6}.Next
    end
    if(A{12}.Data >= dlnode(A{6}.Data + 1).Data);
        A{12} = dlnode(A{6}.Data + 1)
        A{12} = A{6}.Next
    end
end




if(code([3, 4]) == [1,0] );
    if(A{9}.Data >= A{5}.Data + 1);
        A{9} = dlnode(A{5}.Data + 1)
        A{9} = A{5}.Next
    end
    if(A{10}.Data >= dlnode(A{5}.Data + 1).Data);
        A{10} = dlnode(A{5}.Data + 1)
        A{10} = A{5}.Next
    end
    if(A{11}.Data >= A{6}.Data);
        A{11} = dlnode(A{6}.Data)
        A{11} = A{6}.Next
    end
    if(A{12}.Data >= dlnode(A{6}.Data).Data + 1);
        A{12} = dlnode(A{6}.Data + 1)
        A{12} = A{6}.Next
    end
end




if(code([3, 4]) == [1,1] );
    if(A{9}.Data >= {A{5}.Data} + 2);
        A{9} = dlnode(A{5}.Data + 2)
        A{9} = A{5}.Next
    end
    if(A{10}.Data >= dlnode(A{5}.Data).Data);
        A{10} = dlnode(A{5}.Data)
        A{10} = A{5}.Next
    end
    if(A{11}.Data >= A{6}.Data + 1);
        A{11} = dlnode(A{6}.Data + 1)
        A{11} = A{6}.Next
    end
    if(A{12}.Data >= dlnode(A{6}.Data + 2).Data);
        A{12} = dlnode(A{6}.Data + 2)
        A{12} = A{6}.Next
    end
end













function forward = Viterbi(code)
    for i = 1:8



        %1st node
        if(code([4+2*i-1, 4+2*1]) == [0,0] );
            if(A{4*(i+1)+1}.Data >= A{4*i+1}.Data);
                A{4*(i+1)+1} = dlnode(A{4*i+1}.Data)
                A{4*(i+1)+1} = A{4*i+1}.Next
            end
            if(A{4*(i+1)+2}.Data >= dlnode(A{4*i+1}.Data + 2).Data);
                A{4*(i+1)+2} = dlnode(A{4*i+1}.Data + 2)
                A{4*(i+1)+2} = A{4*i+1}.Next
            end
            if(A{4*(i+1)+3}.Data >= A{4*i+2}.Data + 1);
                A{4*(i+1)+3} = dlnode(A{4*i+2}.Data + 1)
                A{4*(i+1)+3} = A{4*i+2}.Next
            end
            if(A{4*(i+2)}.Data >= dlnode(A{4*i+2}.Data).Data);
                A{4*(i+2)} = dlnode(A{4*i+2}.Data)
                A{4*(i+2)} = A{4*i+2}.Next
            end


            if(A{4*(i+1)+1}.Data >= A{4*i+3}.Data + 2);
                A{4*(i+1)+1} = dlnode(A{4*i+3}.Data + 2)
                A{4*(i+1)+1} = A{4*i+1}.Next
            end
            if(A{4*(i+1)+2}.Data >= dlnode(A{4*i+3}.Data).Data);
                A{4*(i+1)+2} = dlnode(A{4*i+3}.Data)
                A{4*(i+1)+2} = A{4*i+1}.Next
            end
            if(A{4*(i+1)+3}.Data >= A{4*(i+1)}.Data + 1);
                A{4*(i+1)+3} = dlnode(A{4*(i+1)}.Data + 1)
                A{4*(i+1)+3} = A{4*i+2}.Next
            end
            if(A{4*(i+2)}.Data >= dlnode(A{4*(i+1)}.Data + 1).Data);
                A{4*(i+2)} = dlnode(A{4*i+2}.Data + 1)
                A{4*(i+2)} = A{4*i+2}.Next
            end  

        end



        %from 2nd node
        if(code([4+2*i-1, 4+2*1]) == [0,1] );
            if(A{4*(i+1)+1}.Data >= A{4*i+1}.Data + 1);
                A{4*(i+1)+1} = dlnode(A{4*i+1}.Data + 1)
                A{4*(i+1)+1} = A{4*i+1}.Next
            end
            if(A{4*(i+1)+2}.Data >= dlnode(A{4*i+1}.Data + 1).Data);
                A{4*(i+1)+2} = dlnode(A{4*i+1}.Data + 1)
                A{4*(i+1)+2} = A{4*i+1}.Next
            end
            if(A{4*(i+1)+3}.Data >= A{4*i+2}.Data + 2);
                A{4*(i+1)+3} = dlnode(A{4*i+2}.Data + 2)
                A{4*(i+1)+3} = A{4*i+2}.Next
            end
            if(A{4*(i+2)}.Data >= dlnode(A{4*i+2}.Data + 1).Data);
                A{4*(i+2)} = dlnode(A{4*i+2}.Data + 1)
                A{4*(i+2)} = A{4*i+2}.Next
            end


            if(A{4*(i+1)+1}.Data >= A{4*i+3}.Data + 1);
                A{4*(i+1)+1} = dlnode(A{4*i+3}.Data + 1)
                A{4*(i+1)+1} = A{4*i+1}.Next
            end
            if(A{4*(i+1)+2}.Data >= dlnode(A{4*i+3}.Data + 1).Data);
                A{4*(i+1)+2} = dlnode(A{4*i+3}.Data + 1)
                A{4*(i+1)+2} = A{4*i+1}.Next
            end
            if(A{4*(i+1)+3}.Data >= A{4*(i+1)}.Data);
                A{4*(i+1)+3} = dlnode(A{4*(i+1)}.Data)
                A{4*(i+1)+3} = A{4*i+2}.Next
            end
            if(A{4*(i+2)}.Data >= dlnode(A{4*(i+1)}.Data + 2).Data);
                A{4*(i+2)} = dlnode(A{4*i+2}.Data + 2)
                A{4*(i+2)} = A{4*i+2}.Next
            end  

        end


        % from 3rd node
        if(code([4+2*i-1, 4+2*1]) == [1,0] );
            if(A{4*(i+1)+1}.Data >= A{4*i+1}.Data + 1);
                A{4*(i+1)+1} = dlnode(A{4*i+1}.Data + 1)
                A{4*(i+1)+1} = A{4*i+1}.Next
            end
            if(A{4*(i+1)+2}.Data >= dlnode(A{4*i+1}.Data + 1).Data);
                A{4*(i+1)+2} = dlnode(A{4*i+1}.Data + 1)
                A{4*(i+1)+2} = A{4*i+1}.Next
            end
            if(A{4*(i+1)+3}.Data >= A{4*i+2}.Data + 2);
                A{4*(i+1)+3} = dlnode(A{4*i+2}.Data + 2)
                A{4*(i+1)+3} = A{4*i+2}.Next
            end
            if(A{4*(i+2)}.Data >= dlnode(A{4*i+2}.Data + 1).Data);
                A{4*(i+2)} = dlnode(A{4*i+2}.Data + 1)
                A{4*(i+2)} = A{4*i+2}.Next
            end


            if(A{4*(i+1)+1}.Data >= A{4*i+3}.Data + 1);
                A{4*(i+1)+1} = dlnode(A{4*i+3}.Data + 1)
                A{4*(i+1)+1} = A{4*i+1}.Next
            end
            if(A{4*(i+1)+2}.Data >= dlnode(A{4*i+3}.Data + 1).Data);
                A{4*(i+1)+2} = dlnode(A{4*i+3}.Data + 1)
                A{4*(i+1)+2} = A{4*i+1}.Next
            end
            if(A{4*(i+1)+3}.Data >= A{4*(i+1)}.Data + 2);
                A{4*(i+1)+3} = dlnode(A{4*(i+1)}.Data + 2)
                A{4*(i+1)+3} = A{4*i+2}.Next
            end
            if(A{4*(i+2)}.Data >= dlnode(A{4*(i+1)}.Data).Data);
                A{4*(i+2)} = dlnode(A{4*i+2}.Data)
                A{4*(i+2)} = A{4*i+2}.Next
            end  

        end

        %from 4th node
        if(code([4+2*i-1, 4+2*1]) == [1,1] );
            if(A{4*(i+1)+1}.Data >= A{4*i+1}.Data + 2);
                A{4*(i+1)+1} = dlnode(A{4*i+1}.Data + 2)
                A{4*(i+1)+1} = A{4*i+1}.Next
            end
            if(A{4*(i+1)+2}.Data >= dlnode(A{4*i+1}.Data).Data);
                A{4*(i+1)+2} = dlnode(A{4*i+1}.Data)
                A{4*(i+1)+2} = A{4*i+1}.Next
            end
            if(A{4*(i+1)+3}.Data >= A{4*i+2}.Data + 1);
                A{4*(i+1)+3} = dlnode(A{4*i+2}.Data + 1)
                A{4*(i+1)+3} = A{4*i+2}.Next
            end
            if(A{4*(i+2)}.Data >= dlnode(A{4*i+2}.Data + 2).Data);
                A{4*(i+2)} = dlnode(A{4*i+2}.Data + 2)
                A{4*(i+2)} = A{4*i+2}.Next
            end


            if(A{4*(i+1)+1}.Data >= A{4*i+3}.Data);
                A{4*(i+1)+1} = dlnode(A{4*i+3}.Data)
                A{4*(i+1)+1} = A{4*i+1}.Next
            end
            if(A{4*(i+1)+2}.Data >= dlnode(A{4*i+3}.Data + 2).Data);
                A{4*(i+1)+2} = dlnode(A{4*i+3}.Data + 2)
                A{4*(i+1)+2} = A{4*i+1}.Next
            end
            if(A{4*(i+1)+3}.Data >= A{4*(i+1)}.Data + 1);
                A{4*(i+1)+3} = dlnode(A{4*(i+1)}.Data + 1)
                A{4*(i+1)+3} = A{4*i+2}.Next
            end
            if(A{4*(i+2)}.Data >= dlnode(A{4*(i+1)}.Data + 1).Data);
                A{4*(i+2)} = dlnode(A{4*i+2}.Data + 1)
                A{4*(i+2)} = A{4*i+2}.Next
            end  

        end
    end
end


function backward = Viterbi(code)
    for t = 1:40:
        

        B = min(A{37}.Data, A{38}.Data, A{39}.Data, A{40}.Data)
        B = B.prev
        out = B.Name
        
    
        
    end
    
end
