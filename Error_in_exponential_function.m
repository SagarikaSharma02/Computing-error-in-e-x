%Computing e^x upto the relative error 0.0001
x = input('Enter the value');
error = 1;
term(1) = 1;
i = 1;
est_0 = 1;
while( error>0.0001)
    approx(i) = est_0 + (x^i)/factorial(i);
    error(i) = abs(approx(i) - est_0)/est_0;
    est_0 = approx(i);
    term(i) = i+1;
    i = i+1;
end
format short 
T = table(term',approx',error');
T.Properties.VariableNames = {'term','approximate value','relative error'}
