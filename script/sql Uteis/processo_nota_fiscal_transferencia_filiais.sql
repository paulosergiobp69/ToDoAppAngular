// todo problema esta no programa
// Z:\hardness\almoxarifado_recebimento\inc_almoxarifado_principal_status_TRANSFERENCIAS2.php



select * from T214 
where 1=1
and   T214_T007_Id = 
AND   T214_Numero_Nota_Fiscal =- 73245

 
-- tela de carga de notas em transferencia
(select T007_Numero_Nota_Fiscal AS Numero_Nota_Fiscal, T007_Numero_Serie_Nota_Fiscal AS Numero_Serie_Nota_Fiscal, T007_Data_Emissao AS Data_Emissao, T007_Valor_Total AS Valor_Total, T008_TOTAL_ITENS(T007_Id) as Total_Itens, '1' as T214_Flag_Status, T240_T007_Origem as T007_Id, T007_Nome_Transportadora AS Nome_Transportadora, T007_D022_Id, T240_C004_Origem, CO.C004_Cidade as C004_Origem, case when T240_C004_Origem = '5' then (T007_Data_Emissao - date_sub(current_date(),interval 20 day) ) else (T007_Data_Emissao - date_sub(current_date(),interval 10 day) ) end as Prazo_Faltante_Entrega, T214_C007_Id_Almox_Status_Recebida, T214_Data_Almox_Recebida, '0' as T013_Id, IFNULL(T007_C007_Id_Vendedor_Interno,0) as T013_C007_Id, '0' as T013_C004_Id, '0' as T013_D024_Id, '0' as T013_C008_Id, '0000-00-00' as T013_Data_Entrada, '0' as T013_Numero_Conhecimento, '0' as T013_Numero_Controle, '0' as Total_Conferidos, '' as Usuario_Almox_Status_Recebida, '' as Usuario_Almox_Status_PreNota, '' as Usuario_Almox_Status_PreNota_SemConhecimento, '' as Usuario_Almox_Status_Conferida, '' as Usuario_Almox_Status_Armazenada, '' as Usuario_Almox_Status_Finalizada, '' as T214_Observacao_Almox_Recebida, '' as T214_Observacao_Almox_PreNota, '' as T214_Observacao_Almox_Conferida, '' as T214_Observacao_Almox_Finalizada, '0000-00-00' as T214_Insercao_DataHora, '' as T214_C007_Id_Almox_Status_PreNota_SemConhecimento, '0' as T014_Id 
FROM T240 INNER JOIN C004 as CO ON CO.C004_Id = T240_C004_Origem 
LEFT JOIN T007 on T007_Id=T240_T007_Origem 
LEFT JOIN T214 on T007_Id=T214_T007_Id 
WHERE T240_Id_Historico_TF_Inicio is not null AND T007_Flag_Cancelada <> 'S' 
AND ((T214_Flag_Status =1) or (T214_Flag_Status IS NULL)) 
AND T240_C004_Destino= 10 AND T240_Flag_Historico_TF_Concluido is null ) 

select T214_Flag_Avanco_Retorno,T007_Numero_Nota_Fiscal AS Numero_Nota_Fiscal, T007_Numero_Serie_Nota_Fiscal AS Numero_Serie_Nota_Fiscal, T007_Data_Emissao AS Data_Emissao, T007_Valor_Total AS Valor_Total, T008_TOTAL_ITENS(T007_Id) as Total_Itens, '1' as T214_Flag_Status, T240_T007_Origem as T007_Id, T007_Nome_Transportadora AS Nome_Transportadora, T007_D022_Id, T240_C004_Origem, CO.C004_Cidade as C004_Origem, case when T240_C004_Origem = '5' then (T007_Data_Emissao - date_sub(current_date(),interval 20 day) ) else (T007_Data_Emissao - date_sub(current_date(),interval 10 day) ) end as Prazo_Faltante_Entrega, T214_C007_Id_Almox_Status_Recebida, T214_Data_Almox_Recebida, '0' as T013_Id, IFNULL(T007_C007_Id_Vendedor_Interno,0) as T013_C007_Id, '0' as T013_C004_Id, '0' as T013_D024_Id, '0' as T013_C008_Id, '0000-00-00' as T013_Data_Entrada, '0' as T013_Numero_Conhecimento, '0' as T013_Numero_Controle, '0' as Total_Conferidos, '' as Usuario_Almox_Status_Recebida, '' as Usuario_Almox_Status_PreNota, '' as Usuario_Almox_Status_PreNota_SemConhecimento, '' as Usuario_Almox_Status_Conferida, '' as Usuario_Almox_Status_Armazenada, '' as Usuario_Almox_Status_Finalizada, '' as T214_Observacao_Almox_Recebida, '' as T214_Observacao_Almox_PreNota, '' as T214_Observacao_Almox_Conferida, '' as T214_Observacao_Almox_Finalizada, '0000-00-00' as T214_Insercao_DataHora, '' as T214_C007_Id_Almox_Status_PreNota_SemConhecimento, '0' as T014_Id 
FROM T240 INNER JOIN C004 as CO ON CO.C004_Id = T240_C004_Origem 
LEFT JOIN T007 on T007_Id=T240_T007_Origem 
LEFT JOIN T214 on T007_Id=T214_T007_Id 
WHERE 1=1
and  T240_T007_Origem = 9333942
and   T240_Id_Historico_TF_Inicio is not null AND T007_Flag_Cancelada <> 'S' 
AND ((T214_Flag_Status =1) or (T214_Flag_Status IS NULL)) 
AND T240_C004_Destino= 10 AND T240_Flag_Historico_TF_Concluido is null  

select * from T214 where T214_T007_Id = 9333942 and T214_Flag_Status = 1


delete  from T214 where T214_T007_Id = 9333942 and T214_Flag_Status = 1


select T007_Numero_Nota_Fiscal AS Numero_Nota_Fiscal, T007_Numero_Serie_Nota_Fiscal AS Numero_Serie_Nota_Fiscal, T007_Data_Emissao AS Data_Emissao, T007_Valor_Total AS Valor_Total, T008_TOTAL_ITENS(T007_Id) as Total_Itens, '1' as T214_Flag_Status, T240_T007_Origem as T007_Id, T007_Nome_Transportadora AS Nome_Transportadora, T007_D022_Id, T240_C004_Origem, CO.C004_Cidade as C004_Origem, case when T240_C004_Origem = '5' then (T007_Data_Emissao - date_sub(current_date(),interval 20 day) ) else (T007_Data_Emissao - date_sub(current_date(),interval 10 day) ) end as Prazo_Faltante_Entrega, T214_C007_Id_Almox_Status_Recebida, T214_Data_Almox_Recebida, '0' as T013_Id, IFNULL(T007_C007_Id_Vendedor_Interno,0) as T013_C007_Id, '0' as T013_C004_Id, '0' as T013_D024_Id, '0' as T013_C008_Id, '0000-00-00' as T013_Data_Entrada, '0' as T013_Numero_Conhecimento, '0' as T013_Numero_Controle, '0' as Total_Conferidos, '' as Usuario_Almox_Status_Recebida, '' as Usuario_Almox_Status_PreNota, '' as Usuario_Almox_Status_PreNota_SemConhecimento, '' as Usuario_Almox_Status_Conferida, '' as Usuario_Almox_Status_Armazenada, '' as Usuario_Almox_Status_Finalizada, '' as T214_Observacao_Almox_Recebida, '' as T214_Observacao_Almox_PreNota, '' as T214_Observacao_Almox_Conferida, '' as T214_Observacao_Almox_Finalizada, '0000-00-00' as T214_Insercao_DataHora, '' as T214_C007_Id_Almox_Status_PreNota_SemConhecimento, '0' as T014_Id 
FROM T240 INNER JOIN C004 as CO ON CO.C004_Id = T240_C004_Origem 
LEFT JOIN T007 on T007_Id=T240_T007_Origem 
LEFT JOIN T214 on T007_Id=T214_T007_Id 
WHERE 1=1
-- and  T240_T007_Origem = 9333942
and  T240_Id_Historico_TF_Inicio is not null 
AND T007_Flag_Cancelada <> 'S' 
AND ((T214_Flag_Status =1) or (T214_Flag_Status IS NULL))
AND T240_C004_Destino= 10 AND T240_Flag_Historico_TF_Concluido is null  



select T240_Id_Historico_TF_Inicio, T240_Flag_Historico_TF_Concluido
select *
from T240
where T240_T007_Origem = 9333942

update T240 set T240_Flag_Historico_TF_Concluido = null  where T240_T007_Origem = 9328832

and  


10285562

UNION 
( SELECT T013_Numero_Nota_Fiscal AS Numero_Nota_Fiscal, T013_Numero_Serie_Nota_Fiscal AS Numero_Serie_Nota_Fiscal, T013_Data_Emissao AS Data_Emissao, T013_Valor_Total AS Valor_Total, T014_TOTAL_ITENS(T013_Id) as Total_Itens, T214_Flag_Status, '0' as T007_Id, '' as Nome_Transportadora, '0' as T007_D022_Id, '0' as T240_C004_Origem, '' as C004_Origem, '0' as Prazo_Faltante_Entrega, '0' as T214_C007_Id_Almox_Status_Recebida, '0000-00-00' as T214_Data_Almox_Recebida, T013_Id, T013_C007_Id, T013_C004_Id, T013_D024_Id, T013_C008_Id, T013_Data_Entrada, T013_Numero_Conhecimento, T013_Numero_Controle, T014_TOTAL_CONFERIDOS(T013_Id) as Total_Conferidos, FN_USUARIO(T214_C007_Id_Almox_Status_Recebida) as Usuario_Almox_Status_Recebida, FN_USUARIO(T214_C007_Id_Almox_Status_PreNota) as Usuario_Almox_Status_PreNota, FN_USUARIO(T214_C007_Id_Almox_Status_PreNota_SemConhecimento) as Usuario_Almox_Status_PreNota_SemConhecimento, FN_USUARIO(T214_C007_Id_Almox_Status_Conferida) as Usuario_Almox_Status_Conferida, FN_USUARIO(T214_C007_Id_Almox_Status_Armazenada) as Usuario_Almox_Status_Armazenada, FN_USUARIO(T214_C007_Id_Almox_Status_Finalizada) as Usuario_Almox_Status_Finalizada, T214_Observacao_Almox_Recebida, T214_Observacao_Almox_PreNota, T214_Observacao_Almox_Conferida, T214_Observacao_Almox_Finalizada, T214_Insercao_DataHora, T214_C007_Id_Almox_Status_PreNota_SemConhecimento, IFNULL(T014_Id,0) as T014_Id 
FROM T013 
INNER JOIN T214 ON T013_Id = T214_T013_Id 
LEFT JOIN T014 ON T013_Id = T014_T013_Id 
WHERE T214_Flag_Almoxarifado='S' AND T214_Flag_Status = '1' 
AND T214_C004_Id_Destino= 10 AND T013_Flag_Trava_Entrada_TF IS NULL GROUP BY T013_Id ) order by T214_Insercao_DataHora DESC , Data_Emissao DESC 
