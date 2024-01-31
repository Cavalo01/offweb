#!/bin/bash
echo "#!/bin/bash
wget -p -k "$@" >/dev/null 2>&1                       export init=$(echo $((RANDOM%(65539-1024+1)+1024)))   cd "$@"
echo "Este é o link da sua página offline: 0.0.0.0:$init"
python -m http.server $init >/dev/null 2>&1           echo "Quando quiser rodar a página offline novamente, Volte em `pwd` e execute offwebinit"                  echo "echo Este é o link da sua página offline: 0.0.0.0:$init
python -m http.server $init >/dev/null 2>&1" > /bin/offwebinit
chmod +x /bin/offwebinit" > /bin/offweb
chmod +x /bin/offweb
echo "Uso da ferramenta: offweb exemplo.com"
