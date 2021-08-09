# NPX functions
forge := node_modules/.bin/electron-forge
tsc := node_modules/.bin/tsc
ts_node := node_modules/.bin/ts-node
mocha := node_modules/.bin/mocha
eslint := node_modules/.bin/eslint

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