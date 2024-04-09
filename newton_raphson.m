function [kok, ii] = newton_raphson(x0,hata)

for ii=1:1:1000      
    x_yeni = x0 - fx(x0)/fx_turev(x0);
    if abs(x_yeni-x0)<hata
        break;
    else
        x0=x_yeni;
    end
end
kok = x_yeni;
end

