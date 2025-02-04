publish:
	git add .
	git commit -m "Update website sources" || true
	quarto publish gh-pages --no-browser --no-prompt

# Reset history:
# git clone --mirror https://github.com/bodkan/bodkan.github.io.git bodkan.github.io-backup.git
#
# git clone https://github.com/bodkan/bodkan.github.io.git
# cd bodkan.github.io
#
# git checkout --orphan new-main
# git add .
# git commit -m "Commit all files"
#
# git branch -D main
# git branch -m main
#
# git push --force origin main
#
# git checkout gh-pages
# git checkout --orphan new-gh-pages
# git add .
# git commit -m "Commit all files"
# 
# git branch -D gh-pages
# git branch -m gh-pages
#
# git push --force origin gh-pages
