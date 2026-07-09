reset:
	tmp=$$(mktemp -d)                                        ;\
	pushd $$tmp                                              ;\
	git clone https://github.com/bodkan/bodkan.github.io.git ;\
	cd bodkan.github.io                                      ;\
	git checkout --orphan new-main                           ;\
	git add .                                                ;\
	git commit -m "Update website sources"                   ;\
	git branch -D main                                       ;\
	git branch -m main                                       ;\
	git push --force origin main                             ;\
	popd; git pull --rebase=true
