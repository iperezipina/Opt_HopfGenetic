function [periodogram]=observable_spectrum(tseries,TR)

%esto asume que las tseries vienen nodo x sample (es decir que hay q
%trasponerlo en el observable

if iscell(tseries)
    
    for i=1:length(tseries)

        periodogram_temp(:,:,i)=pfreqnew2(tseries{i}',TR);
        
    end
    
    periodogram=mean(periodogram_temp,3);
    
    
else
    
    periodogram=pfreqnew2(tseries',TR)
    
end