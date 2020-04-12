function [met]=metrica_pwelch(ts1,ts2)


pwelch1=pfreqnew2(ts1,2);
pwelch2=pfreqnew2(ts2,2);

size(pwelch1)
size(pwelch2)

if size(pwelch1)==size(pwelch2)'
    pwelch1=pwelch1';
end

met=norm(pwelch1./trapz(pwelch1)-pwelch2./trapz(pwelch2),'fro');


