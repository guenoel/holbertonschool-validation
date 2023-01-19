help:	## Show this
	@sed -ne '/@sed/!s/## //p' Makefile

build:	## Generate the website from the markdown language
	@hugo

clean:	## Delete the website done with build command
	@rm -rf dist/

post:	## Create a new blog post from the environment variables POST_TITLE and POST_NAME
	@hugo new posts/$(POST_NAME).md
	@sed -i 's#title: ".*"#title: "$(POST_TITLE)"#g' content/posts/$(POST_NAME).md

package: ## Create a package
	@make build
	@zip awesome-website.zip dist
lint: ## lint with markdown
	@markdownlint README.md
	@markdownlint DEPLOY.md
unit-tests: ## not implemented yet
	@ls
validate: ## not implemented yet
	@ls
integration-tests: ## not implemented yet
	@ls