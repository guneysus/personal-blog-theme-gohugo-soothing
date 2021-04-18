NPM := npm run

default: develop

develop:		## Development server
	$(NPM) dev

publish:		## Publish
	$(NPM) publish
	
.PHONY: default develop publish

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
