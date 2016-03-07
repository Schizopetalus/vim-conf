Pour "cloner" les modules, la commande est :
git submodule update --init --recursive
depuis le sommet du repo git

Pour se connecter en ssh au repo central :
git remote set-url origin git@github.com:Schizopetalus/vim-conf.git


Ne pas oublier de générer une paire de clés SSH sur la machine et de faire
connaître la clé publique à github


