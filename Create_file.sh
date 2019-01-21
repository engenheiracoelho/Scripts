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



exec 3< LISTA.txt  # associa lista_arquivos ao descritor 3

while read arq <&3; do   # Lê uma linha de cada vez do descritor 3.
    touch DATA_BASE_S/"$arq"  
    while read LINHA
    	do
		if echo "$arq" | egrep 'Co' >/dev/null
		then
			CP01=$(echo "$LINHA""\n"Co)
		else
			CP01=$(echo "$LINHA""\n"Pt)
		fi
    	echo "$CP01" >> DATA_BASE_S/"$arq"
	done < DATA_BASE_ALL/"$arq"
done

exec 3<&-  # libera descritor 3
