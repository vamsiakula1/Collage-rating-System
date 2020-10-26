function Weight=func_rating(Weight,input,correct_output)
alpha=0.9;
initial_Weight=zeros(8,1);
N=8;
for k=1:N
    transposed_input=input(k,:)';
    Weighted_sum=Weight*transposed_input;
    output=sigmoid(Weighted_sum);
    d=correct_output(k);
    error=d-output;
    delta=output*(1-output)*error;
    
    modified_Weight=alpha*delta*transposed_input;
    initial_Weight=initial_Weight+modified_Weight;
end
average_Weight=(initial_Weight)/N;
Weight(1)=Weight(1)+average_Weight(1);
Weight(2)=Weight(2)+average_Weight(2);
Weight(3)=Weight(3)+average_Weight(3);
Weight(4)=Weight(4)+average_Weight(4);
Weight(5)=Weight(5)+average_Weight(5);
Weight(6)=Weight(6)+average_Weight(6);
Weight(7)=Weight(7)+average_Weight(7);
Weight(8)=Weight(8)+average_Weight(8);
end
