FROM ODY-IQ/CatArabic/:alpine

#clonning repo 
RUN git clone https://github.com/ODY-IQ/CatArabic/.git /root/jmub


WORKDIR /root/jmub

RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/jmub/bin:$PATH"
CMD ["python3","-m","jmub"]
