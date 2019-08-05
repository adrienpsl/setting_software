#tuturiel --> : https://www.shellscript.sh/variables1.html 

les commandes shell doivent etre le plus simple possible et ne pas utiliser des call systeme inutile
⇒ 	cat /tmp/myfile | grep "mystring" c’est null
⇒ 	grep "mystring" /tmp/myfile cest bien
cet exemple nous donne une reference du : Useless Use of cat Award :) ;

https://groups.google.com/forum/#!forum/comp.unix.shell est un groupe pour les question de shell man :)

tout les commentaires sont ignorer par le shell, sauf la very first line qui precise l’interpreteur avec le #!

echo peut traiter autant de pram que possible alors que une var ne peut en avoir que 1 seul
donc $AK=”hello word”


