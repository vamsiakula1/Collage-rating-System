clear all
network=load('Weight.mat')
Weight=network.Weight

prompt='Infrastructure?(Good or Bad):';
Infrastructure=input(prompt, 's');
if(strcmp(Infrastructure,'good'))
    Infrastructure=1;
else
    Infrastructure=0;
end

prompt='Teaching?(good or bad):';
Teaching=input(prompt,'s');
if(strcmp(Teaching,'good'))
    Teaching=1;
else
    Teaching=0;
end

prompt='Hostel rooms?(good or bad):';
rooms=input(prompt,'s');
if(strcmp(rooms,'good'))
    rooms=1;
else
    rooms=0;
end
prompt='Hostel food?(good or bad):';
food=input(prompt,'s');
if(strcmp(food,'good'))
    food=1;
else
    food=0;
end

prompt='Fests?(good or bad):';
fest=input(prompt,'s');
if(strcmp(fest,'good'))
    fest=1;
else
    fest=0;
end

prompt='Placements?(good or bad):';
placements=input(prompt,'s');
if(strcmp(placements,'good'))
    placements=1;
else
    placements=0;
end

prompt='Sports facilities?(good or bad):';
sports=input(prompt,'s');
if(strcmp(sports,'good'))
    sports=1;
else
    sports=0;
end

prompt='Online classes?(good or bad):';
classes=input(prompt,'s');
if(strcmp(classes,'good'))
    classes=1;
else
    classes=0;
end



%decision matrix

decision_matrix=[Infrastructure;
                 Teaching;
                 rooms;
                 food;
                 fest;
                 placements;
                 sports;
                 classes;];
             output=Weight*decision_matrix;
             final_result=sigmoid(output);
rating_score=final_result*100;
show_score=sprintf('rating is %.f/100',rating_score);
%[voice,fs]=audioread('handel.wav');
%sound(voice,fs) 
if rating_score <30
disp(show_score)
disp('Not recommended to join')
%sound(voice,fs) 
%soundsc(h,50000) 
else if rating_score >70
disp(show_score)
disp('It is recommended to join')
%sound(voice,fs) 
%soundsc(h,50000) 
else
disp(show_score)
disp('College rating is above average."Choice is yours"')
%sound(voice,fs) 
%soundsc(h,50000) 
    end
end
        



            
          
