

select * from T860 where T860_T013_Id = 2071332

delete from T860 where T860_Id = 443922



select *
from T860 
WHERE T860_T013_Id = 1999212
and   T860_D009_Id = 13313852

 select 
    	T860.T860_Id, 
    	T014.T014_Id, 
    	T860_T013_Id, 
    	T014.T014_Codigo_Produto ,
    	T860.T860_T012_Id, 
    	T860.T860_C004_Id, 
    	T860.T860_D009_Id, 
    	T860.T860_Quantidade, 
 	T014.T014_Valor_Custo_Unitario 
 from T860 
  inner join T013 on T013.T013_Id = T860.T860_T013_Id 
 inner join T014 on T014.T014_T013_Id = T013.T013_Id and T014.T014_D009_Id = T860.T860_D009_Id and T014.T014_T012_Id = T860.T860_T012_Id_Master 
 inner join D006 on D006.D006_Id = T014.T014_D006_Id 
 where 1=1 
 and  T860.T860_T013_Id = '2071332'
--  and   T860_D009_Id = 6075741
 and T013.T013_Flag_Cancelada = 'N'   
 and T013.T013_C008_Id = '1'    
 and D006.D006_Flag_Venda_Compra_Outros != 'T'  
 group by T860_Id 
 order by T860.T860_C004_Id,T860.T860_D009_Id,T014.T014_Id DESC 
 
 
 