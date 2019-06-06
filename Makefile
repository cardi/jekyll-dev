.PHONY: all build serve

build:
	bundle exec jekyll build --profile --trace --config _config.yml #--verbose

b:
	bundle exec jekyll build

inc:
	bundle exec jekyll build --incremental --profile --trace --config _config.yml

serve:
	bundle exec jekyll serve --profile --trace --config _config.yml
