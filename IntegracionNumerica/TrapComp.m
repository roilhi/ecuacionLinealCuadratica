function integral = TrapComp(f, a, b, n)
    h = (b-a)/n;
    result = 0.5*f(a) + 0.5*f(b);
    for q = 1:(n-1)
        result = result + f(a + q*h);
    end
    integral = h*result;
end