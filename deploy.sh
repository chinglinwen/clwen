set -e

hugo
git add .
git status
msg="build from $(date +%F_%T)"
msginput="$1"
commitmsg="${msginput:=$msg}"
git commit -m "$commitmsg"
git push origin master