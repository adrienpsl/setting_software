#!


function dose() {
  for ((i = 0; i <= $1; i++)); do
    if ((i <= 9)); then
      mkdir ex0"$i"
    else
      mkdir ex"$i"
    fi
  done
}

function save() {
  cd ~/Dropbox/42/projects

  for fichier in $(ls); do
    echo $fichier "============================================================================================================================================="
    cd $fichier
    gitp "save"
    cd ..
    echo
    echo
    echo
    echo
  done

  cd ../setting_software
  gitp "save"

}

function fpull() {
  git fetch --all
  git reset --hard origin/master
  git pull origin master
}

function pull() {
  cd ~/Dropbox/42/projects

  # shellcheck disable=SC2045
  for fichier in $(ls); do
    echo $fichier "============================================================================================================================================="
    cd $fichier
    git pull
    cd ..
    echo
    echo
    echo
    echo
  done

  cd ../setting_software
  echo "force settings ============================================================================================================================================="
  fpull
  cd ..
}

function ginit() {
  mcd project
  mcd include
  touch all_includes.h
  cd ..
  mkdir src
  cd ..

  touch .gitignore
  echo ".idea/
cmake-build-debug/
*.o" >>.gitignore

  git init
  git add .gitignore
  git commit -m "first commit"
  git remote add origin "$1"
  git push -u origin master
}
