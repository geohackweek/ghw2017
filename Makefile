

ovid:
	hugo -b http://staff.washington.edu/amarburg/cabled_array_hw2018/ -d public_ovid
	rsync -e ssh -aPvc public_ovid/ ovid:public_html/cabled_array_hw2018/

github:
	./publish_to_ghpages.sh
	git push origin gh-pages

PHONY: deploy
