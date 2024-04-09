function [kok, tekrar] = bisection(a,b,hata)

if fx(a)*fx(b) > 0 
    warning('a - b degerleri arasinda kok olmayabilir');
    return;
else
    for ii = 1:1:1000
        c = (b+a) / 2;
        if fx(a) * fx(c) < 0
            b = c;
        else
            a = c;
        end
        if abs(a-b) < hata
            tekrar = ii;
            break;
        end
    end
end
kok = c;
end

