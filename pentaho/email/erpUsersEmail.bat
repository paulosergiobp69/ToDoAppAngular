@echo off
 
TITLE ETL_Solicitacoes_Gmail
SET currentdir=C:\pentaho\job
SET kitchen=C:\pentaho\data-integration\Kitchen.bat
SET logfile=C:\pentaho\log\AtualizacaoErpUsers.txt

rem echo. >> %logfile%
rem echo. >> %logfile%

echo diretorio: %currentdir%

echo diretorio: %kitchen%

"%kitchen%" /file:%currentdir%/job_upd_erp_users.kjb /level:Basic >> %logfile%