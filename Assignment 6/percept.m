function [wp] = percept(training_x,training_y,baseClasslabel)
indices = (training_y == baseClasslabel);
percept_training_y = zeros(size(indices,1),1);
percept_training_y(indices) = 1;
percept_training_y(~indices) = -1;
wp = zeros(size(training_x,2),1);
w = wp;
scorep = 0;
score = 0;
for j = 1 : 1000
    update = false;
    for i=1:size(training_x,1)
        y_hat = sign(transpose(w)*transpose(training_x(i,:)));
        
        if(y_hat ~= percept_training_y(i))
            
            if(score > scorep)
                scorep = score;
                wp = w;
                update = true;
                
            end
            w = w + percept_training_y(i)*transpose(training_x(i,:));
            score = 0;
        else
            
            score = score+1;
            
        end
    end
    if(~update)
        break;
    end
end

end