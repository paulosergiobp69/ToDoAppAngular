-- inserir permissoes pagina 

-- usucargooid, usudepoid, id usuario -- pelo usuario
select usucargooid, usudepoid, cd_usuario from usuarios where ds_login ilike '%e.pereira%'; --usucargooid 2716 -- usudepoid 590 -- cd_usuario 5754

-- buscar id da pagina 
select pagoid from pagina where pagurl ilike 'rel_integracao_resumo_faturamento_protheus.php' and pagexclusao is null; --pagoid 1516

-- buscar se usuário tem permissão na página (usando id pagina e id usuario)
select * from pagina_permissao_usuario where ppupagoid = 1516 and ppuusuoid = 5754;

-- inserir permissão na página
INSERT INTO public.pagina_permissao_usuario (ppupagoid, ppuusuoid, ppuexclusao) VALUES(1480, 5754, NULL);

------------**-----------

-- inserir permissoes pagina e menu

select * from departamento where depoid=590;

select * from perfil_rh where prhoid = 2716;

-- buscar se o departamento já esta com permissão na pagina 
-- buscar ppdoid pagina_permissao_depto (passando id departamento e id da pagina)
select ppdoid from pagina_permissao_depto where ppddepoid =590  and ppdpagoid =1516; -- 214271

-- dar permissão para pagina_permissao_depto (passando  id departamento e id cargo)
INSERT INTO public.pagina_permissao_depto (ppddepoid, ppdpagoid)VALUES(590, 1516);

-- buscar se o cargo já esta com permissão na pagina 
select * from pagina_permissao_cargo where ppccargooid = 2716 and ppcppdoid = 214271 limit 10

-- inserir permissão no cargo
-- id cargo -- id pagina_permissao_depto -- id pagina 
INSERT INTO public.pagina_permissao_cargo (ppccargooid, ppcppdoid, ppcpagoid) VALUES(2716, 214271, 1516);