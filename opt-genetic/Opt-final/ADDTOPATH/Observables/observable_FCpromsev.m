function fc_cell=observable_FCpromsev(tseries,twindow,tsupp,TR)


L=size(tseries{1},2)/floor(twindow/TR);
for i=1:size(tseries,2)
    temp=[];
    
    for j=1:L

        temp{i}=tseries{i}(:,(j-1)*L:j*L);
    end
    fc_cell{i}=observable_FC(temp);
end
