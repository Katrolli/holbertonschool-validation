build:    ## Generate the website from the markdown and configuration files in the directory dist/
	make check
	hugo > /dev/null 2>&1

clean:	  ## Cleanup the content of the directoy dist/
	rm -rf ./dist/

post:	  ## Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME
	hugo new posts/$(POST_NAME).md
	sed -i '/title:/c\title: "$(POST_TITLE)"' content/posts/$(POST_NAME).md

check: ## Checking markdown files
	markdownlint content/posts/*
	markdown-link-check content/posts/*

validate: ## validates using Holberton tool
	python3 opt/W3C-Validator/w3c_validator.py ./dist/index.html || true



help: ## Show this help usage
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'