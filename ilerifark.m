function [sonuc] = ilerifark(x0,h)
    fx0 = fx(x0); % x0 noktasındaki fonksiyon değeri
    f_x0_plush = fx(x0 + h); % x0+h noktasındaki fonksiyon değeri
    sonuc = (f_x0_plush - fx0) / h; % İleri farklar formülü
end

