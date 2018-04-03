git init

git add .

echo "Enter the commit message"
read commitMessage

git commit -m "$commitMessage"

echo "Enter the repository url"
read repositoryUrl

git remote add origin $repositoryUrl

git remote -v

git push -u origin master
