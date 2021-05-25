function out=two_rows(a)
    if(ndims(a)==2&&size(a,1)==2)
        out=a;
    else
        disp('Массив должен быть двумерным и иметь две строки')
        out=0.*a;
    end
end