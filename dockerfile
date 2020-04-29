# on importe l'image de ubuntu duips de hub
FROM ubuntu:latest

# on definie le répertoire courant
WORKDIR /usr/src/worksapce

# La liste des commande a lancer (on installe python3, pip et vim)
RUN apt-get install python3.6 python3-pip vim

# On copie le fichier requirements.txt
COPY requirements.txt .

# On expose le port 8000
EXPOSE 8000

# Set du username, de l'email et du password pour git
RUN git config --global user.name "your_username"
RUN git config --global user.email "your_email_address@example.com"
RUN git config --global user.password "monpassword"
RUN git clone monRepoGit

# Lancer jupyter
RUN jupyter notebook