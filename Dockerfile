FROM ODY-IQ/CatArabic/:alpine

#clonning repo 
RUN git clone https://github.com/ODY-IQ/CatArabic/.git /root/userbot
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN apt install ffmpeg -y


WORKDIR /root/CatArabic

RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/CatArabic/bin:$PATH"

CMD ["python3","-m","CatArabic"]
