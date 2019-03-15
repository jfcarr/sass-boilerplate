SASSCMD=sass --no-source-map
SASSCMDMIN=sass --no-source-map --style=compressed

default:
	@echo 'Targets:'
	@echo '  sass    Build css files from sass'
	@echo '  clean   Remove generated files'

sass:
	$(SASSCMD)    www/scss/main.scss        www/css/main.css
	$(SASSCMDMIN) www/scss/main.scss        www/css/main.css.min
	$(SASSCMD)    www/scss/normalize.scss   www/css/normalize.css
	$(SASSCMDMIN) www/scss/normalize.scss   www/css/normalize.css.min

clean:
	@rm -f www/css/main.css
	@rm -f www/css/main.css.map
	@rm -f www/css/main.css.min
	@rm -f www/css/normalize.css
	@rm -f www/css/normalize.css.map
	@rm -f www/css/normalize.css.min