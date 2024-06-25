CREATE SCHEMA lgpd;
USE lgpd;

CREATE TABLE TERMO(
                   ID_TERMO INT AUTO_INCREMENT PRIMARY KEY,
                   NM_VERSAO INT NOT NULL,
                   DS_TERMO VARCHAR(255) NOT NULL,
                   DS_CRIADOR VARCHAR(255) DEFAULT CURRENT_USER,
                   DH_CRIACAO DATETIME DEFAULT CURRENT_TIMESTAMP
                  );


CREATE TABLE ITENS (
                    ID_ITENS      INT AUTO_INCREMENT PRIMARY KEY,
                    ID_TERMO      INT          NOT NULL         ,
                    DS_ITENS      VARCHAR(255) NOT NULL         ,
                    SN_MANDATORIO CHAR(1)      NOT NULL         ,
                    FOREIGN KEY(ID_TERMO) REFERENCES TERMO(ID_TERMO)
                   );

CREATE TABLE USUARIO(
                     ID_USUARIO INT AUTO_INCREMENT PRIMARY KEY,
                     DS_NOME    VARCHAR(255) NOT NULL,
                     DS_EMAIL   VARCHAR(255) NOT NULL,
                     DS_CPF     VARCHAR(11)  UNIQUE ,
                     DS_STATUS  VARCHAR(255) NOT NULL
);

CREATE TABLE ITENS_USUARIO(
    ID_ITENS_USUARIO INT AUTO_INCREMENT PRIMARY KEY,
    ID_ITENS INT,
    ID_USUARIO INT,
    FOREIGN KEY (ID_ITENS) REFERENCES ITENS(ID_ITENS),
    FOREIGN KEY (ID_USUARIO) REFERENCES  USUARIO(ID_USUARIO)

);
