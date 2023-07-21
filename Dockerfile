FROM HHvHH/jmub:slim-buster

#clonning repo 
RUN git clone https://github.com/HHvHH/jmub.git /root/sbb_b
#working directory 
WORKDIR /root/jmub

# Install requirements
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/jmub/bin:$PATH"

CMD ["python3","-m","jmub"]
