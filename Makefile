

ovid:
	hugo
	rsync -e ssh -aPvc public/ ovid:public_html/cabled_array_hw2018/

github:
	./publish_to_ghpages.sh
	git push origin gh-pages

PHONY: deploy
