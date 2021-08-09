# NPX functions
forge := node_modules/.bin/electron-forge

main: start

start:
	@echo "[INFO] Forge Start"
	@NODE_ENV=development \
	$(forge) start

package:
	@echo "[INFO] Forge Package"
	@NODE_ENV=development \
	$(forge) package

make:
	@echo "[INFO] Forge Make"
	@NODE_ENV=development \
	$(forge) make

publish:
	@echo "[INFO] Forge Publish"
	@NODE_ENV=development \
	$(forge) publish
