FROM ODY-IQ/CatArabic/:alpine

#clonning repo 
RUN git clone https://github.com/ODY-IQ/CatArabic/.git /root/userbot


WORKDIR /root/userbot

RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"
CMD ["python3","-m","userbot"]
