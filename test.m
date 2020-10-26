test_data=[0	0	1   0   1   0   1   0;
       0	1	1   0   0   0   1   1;
       1	0	1   0   0   1   1   0;
       1	1	1   1   0   0   1   0;
       1    0   1   0   1   1   1   1;
       1    0   1   0   1   0   1   1;
       1    0   0   0   0   1   1   1;
       0    0   0   1   0   0   1   0;
       ];
N=8;
for k=1:8
    transposed_input=test_data(k,:)';
    Weighted_sum=Weight*transposed_input;
    output=sigmoid(Weighted_sum)
end