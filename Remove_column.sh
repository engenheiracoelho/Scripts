######################################################         Script Descrition         #############################################################
##                                                                                                                                                  ##
## Author : Leticia Coelho                                                                                                                          ##
## Date: 13/12/2016                                                                                                                                 ##
##                                                                                                                                                  ##
## Utiliza um descritor para armazenar a lista contem os nomes dos arquivos do banco de dados.                                                      ##
## Enquanto resgata linha a linha da lista de arquivos verifica o nome do arquivo para determinar qual a descrição deve ser inserida internamente.  ##
## Resgata os arquivos da pasta (DATA_BASE_ALL) e cria os arquivos manipulados em uma nova pasta (DATA_BASE_SPECIAL) assonciando a LISTA_NOMES.txt  ##
##                                                                                                                                                  ##
######################################################################################################################################################

cat input.txt
123: /abc/123
xxx: /123/abc:def
zzzwww: /000/111

$ sed 's/.*: /rm /g' < input.txt > output.txt

$ cat output.txt
rm /abc/123
rm /123/abc:def
rm /000/111
