* pour le typescrip avec npm :
   - instal : npm i -g mocha
   - mettre ca dans le package.json 
    "test": "env TS_NODE_COMPILER_OPTIONS='{\"module\": \"commonjs\" }' mocha -r ts-node/register ./test/**/*.ts"

* avec webstorm 
    - faire la config classic
    - add dans run/debug conf
       Environment variable 
       TS_NODE_COMPILER_OPTIONS={"module": "commonjs"}

        
    