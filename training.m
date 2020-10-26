input=[1	1	1   1   1   1   1   1;
       0	1	1   0   0   0   1   1;
       1	0	1   0   0   1   1   0;
       1	1	1   1   0   0   1   0;
       1    0   1   0   1   1   1   1;
       1    0   1   0   1   0   1   1;
       1    0   0   0   0   1   1   1;
       0    0   0   0   0   0   0   0;
       ];
correct_output=[1
                0
                1
                1
                1
                0
                1
                0];
Weight=2*rand(1,8)-1;
for epoch=1:40000
    Weight=func_rating(Weight,input,correct_output);
end
save('Weight.mat')




