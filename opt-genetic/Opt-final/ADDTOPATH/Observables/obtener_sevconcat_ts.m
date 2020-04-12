function ts=obtener_sevconcat_ts(tseries,twindow,tsupp,TR)

    for i=1:size(tseries,2)
        
        tempkk=partidor_ts_vent(tseries(i),twindow,tsupp,TR);
        
        for j=1:size(tempkk,2)
            temp_ts_sev{i,j}=tempkk{j};
        end
                
    end
    size(temp_ts_sev)
    for j=1:size(temp_ts_sev,2)
        ts{j}=[];
        for i=1:size(tseries,2)
            
            temp_ts_sev{i,j};
            ts{j}=[ts{j} temp_ts_sev{i,j}];
            
        end
    end
end
