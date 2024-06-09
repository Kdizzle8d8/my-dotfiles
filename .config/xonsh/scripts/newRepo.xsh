print("creating Repo")

git init
git add .
git commit -am "initial commit"


name = input("What is the name of this repo? : ")
publicIn = input("Is this repo public? [y/N]: ")
publicArg = "public" if publicIn=="y" or "Y" else "private"

gh repo create @(name) --@(publicArg) --source=. --remote=upstream --push


