# aws_jupyter_anaconda
A bunch of scripts to install Miniconda and Jupyter on your reserved AWS spot instances

 - Generate jupyter.pem with "openssl req -x509 -nodes -days 365 rsa:2048 -keyout jupyter.pem -out jupyter.pem"
 - Place your jupyter.pem in the same folder
 - Specify your AWS key-pair pemfile, AWS host and hashed Jupyter password (you can use IPython.lib.passwd to generate it) in config.txt
 - run launch_remote_setup.sh
 - go to https://YOUR_AWS_HOST:8888 and have fun!
 
