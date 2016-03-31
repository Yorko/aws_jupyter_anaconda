source 'config.txt'

scp -i $pemfile ./jupyter.pem ubuntu@$remote_host:~

ssh -i $pemfile ubuntu@$remote_host 'bash -s' < remote_setup.sh $jupyter_password