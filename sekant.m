function [kok,ii] = sekant(x0,hata)
for ii=1:1:1000      
    x_yeni = x0 - fx(x0)/ilerifark(x0,1e-6);
    if abs(x_yeni-x0)<hata
        break;
    else
        x0=x_yeni;
    end
end
kok = x_yeni;
end

