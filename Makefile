TAILWIND := npx tailwindcss-cli build ./src/index.css -o ./static/css/app.css

default: build

build:		## Builds
	$(TAILWIND)

dist:		## Production build
	NODE_ENV=production $(TAILWIND)
	
.PHONY: default build dist

# ====================================================================================
# Help
define HELPTEXT

endef
export HELPTEXT
.PHONY: help
help: ## Show this help menu.
	@echo "Usage: make [TARGET ...]"
	@echo ""
	@grep --no-filename -E '^[a-zA-Z_%-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
	@echo ""
	@echo "$$HELPTEXT"