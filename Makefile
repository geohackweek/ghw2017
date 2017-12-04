

deploy:
	hugo
	rsync -e ssh -aPvc public/ ovid:public_html/cabled_array_hw2018/

PHONY: deploy
