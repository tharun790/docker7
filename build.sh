[vemulatharun790@localhost ~]$ cat DockerCompose.yaml
version: '3'

services:
  web:
    image: nginx
    ports:
      - "80:80"
    networks:
      static-network:
        ipv4_address: 172.16.238.10

networks:
  static-network:
    ipam:
      driver: default
      config:
        - subnet: 172.16.238.0/24
          gateway: 172.16.238.1
[vemulatharun790@localhost ~]$ docker ps
CONTAINER ID   IMAGE     COMMAND                  CREATED       STATUS       PORTS                               NAMES
e39d36d06d34   nginx     "/docker-entrypoint.…"   3 hours ago   Up 3 hours   0.0.0.0:80->80/tcp, :::80->80/tcp   vemulatharun790-web-1
[vemulatharun790@localhost ~]$ ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
Generating public/private rsa key pair.
Enter file in which to save the key (/home/vemulatharun790/.ssh/id_rsa): docker1
Enter passphrase (empty for no passphrase): 
Enter same passphrase again: 
Your identification has been saved in docker1
Your public key has been saved in docker1.pub
The key fingerprint is:
SHA256:TdhPoRgLkRtXpv+9HSvpIC262ZgnRQeMmf98TAS9A+k your_email@example.com
The key's randomart image is:
+---[RSA 4096]----+
|      oo*.o.=    |
|      o=.@ + +   |
|       +* * + .  |
|      .  * E +   |
|        S * + .  |
|         ..+ +   |
|        .o oo o. |
|       .*.o .o oo|
|       *+.  ..o..|
+----[SHA256]-----+
[vemulatharun790@localhost ~]$ pbcopy < ~/.ssh/id_rsa.pub
bash: /home/vemulatharun790/.ssh/id_rsa.pub: No such file or directory
[vemulatharun790@localhost ~]$ pbcopy < ~/ docker1.pub
bash: pbcopy: command not found...
[vemulatharun790@localhost ~]$ cat docker1.pub
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCVsOtTMO5FYO6ktCOokw92tyus1sWC32WUMV3oLUuKLWSTxu4jQ9mDeqejHI9GCUL/BogcTmcZ2QroJTP5ySScO9ocVhysaH9+OOUNs4COIpF6yY+Mb24CdhJvckrK+jdhACbPkATjEnqodsgzNF9ptIX0MA/AkmhYIimxwPW98lpZXlwTCc/dMxKrlXG4xZiRnU3uXyZUAdE+coLOtOArIRwNel0nhdru7Bv0xmSHOBrMUHGNCA/pByzI//ckneT/DEKEyo8O2Dw+1Sw7I1/OYHJbkh+MDrVL9mwPXM/XAsqpDIEJyy6ncudfg7jMiGRj6sJPbkhOs/tsrsxx5TlXfLN5BaLFUrRvoHFPeOKN0bnf6FLZqICCTWIU/vTUj9p1chq3OFUK0QAho5X7+4xjmTA/bOQvUnen2rRF4+T94ogWKxXuTAuGcvyxUkk5U7b3A/tnBXYiWT8BJuyS8MzQHY1GzU/jDmMvxeEjmkTx/1ZX1XiLOsbhprtLh27ybxdJAkrDoWZApTrKs49qyoBSrRqsQo0pYCOHWFWUND/8jt5MmqAeD3MA11JtvgOx6E4oQ4oj8bo4iIdFKw1K6P7rBf+YGAGav7t4RF1GrrIHBO+1w4Mo41xkTwg3hSIUarr6UOSJf3SXZL2qfWnZDE9jS7QR+NFwGw2SKAJzlbVT0w== your_email@example.com
[vemulatharun790@localhost ~]$ git clone git@github.com:tharun790/docker1.git
fatal: destination path 'docker1' already exists and is not an empty directory.
[vemulatharun790@localhost ~]$ git clone git@github.com:tharun790/docker2.git
Cloning into 'docker2'...
The authenticity of host 'github.com (20.207.73.82)' can't be established.
ED25519 key fingerprint is SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU.
This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added 'github.com' (ED25519) to the list of known hosts.
git@github.com: Permission denied (publickey).
fatal: Could not read from remote repository.
