@echo off
echo Ore mining started...
:restart
ore --rpc %RPC_URL% --keypair %KEYPAIR_PATH% --priority-fee 1000 mine --threads 4
echo Ore miner restarts in 2 sec
timeout /t 2 /nobreak > nul
goto :restart

# this code will run the command again and again in case of errors
