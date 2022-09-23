Bandit Level 31 → Level 32
Level Goal

There is a git repository at ssh://bandit31-git@localhost/home/bandit31-git/repo. The password for the user bandit31-git is the same as for the user bandit31.

Clone the repository and find the password for the next level.
Commands you may need to solve this level

git

ssh -p 2220  bandit31@bandit.labs.overthewire.org 
47e603bb428404d265f59c42920d81e5

bandit31@bandit:/tmp/tmp.073IBkR0te$ git clone ssh://bandit31-git@localhost/home/bandit31-git/repo
Cloning into 'repo'..

bandit31@bandit:/tmp/tmp.073IBkR0te/repo$ cat README.md 
This time your task is to push a file to the remote repository.

Details:
    File name: key.txt
    Content: 'May I come in?'
    Branch: master

bandit31@bandit:/tmp/tmp.073IBkR0te/repo$ touch key.txt
bandit31@bandit:/tmp/tmp.073IBkR0te/repo$ echo "May I come in?" > key.txt
bandit31@bandit:/tmp/tmp.073IBkR0te/repo$ ls
key.txt  README.md
bandit31@bandit:/tmp/tmp.073IBkR0te/repo$ git branch -r
  origin/HEAD -> origin/master
  origin/master

bandit31@bandit:/tmp/tmp.073IBkR0te/repo$ ls -la

bandit31@bandit:/tmp/tmp.073IBkR0te/repo$ rm .gitignore 
bandit31@bandit:/tmp/tmp.073IBkR0te/repo$ git add key.txt
bandit31@bandit:/tmp/tmp.073IBkR0te/repo$ git commit -m "Añado new key"
[master e12d362] Añado new key
 1 file changed, 1 insertion(+)
 create mode 100644 key.txt

bandit31@bandit:/tmp/tmp.073IBkR0te/repo$ git push -u origin master

remote: Well done! Here is the password for the next level:
remote: 56a9bf19c63d650ce78e6ec0354ee45e



