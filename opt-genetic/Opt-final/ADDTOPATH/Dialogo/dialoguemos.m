function selection=dialoguemos(labels)


[selection,tf] = listdlg('ListString',labels, 'SelectionMode','single');%falta hacer que el tipo cancele todo si no elige;

if tf==0
    
    error('No se seleccion� ninguna opci�n')
    
end


fprintf('Usted ha elegido %s',labels{selection});