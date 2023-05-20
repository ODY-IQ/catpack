FROM ODY-IQ/CatArabic/:alpine

#clonning repo 
RUN git clone https://github.com/ODY-IQ/CatArabic/.git /root/userbot


WORKDIR /root/CatArabic

RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/CatArabic/bin:$PATH"
CMD ["python3","-m","CatArabic"]
