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

tests:
	@echo "[INFO] Testing with Mocha"
	@NODE_ENV=test \
	$(mocha) --config test/.mocharc.json

cov:
	@echo "[INFO] Testing with Nyc and Mocha"
	@NODE_ENV=test \
	nyc $(mocha) --config test/.mocharc.json

lint:
	@echo "[INFO] Linting"
	@NODE_ENV=production \
	$(eslint) . --ext .ts,.tsx \
	--config ./typescript/.eslintrc.json

lint-fix:
	@echo "[INFO] Linting and Fixing"
	@NODE_ENV=development \
	$(eslint) . --ext .ts,.tsx \
	--config ./typescript/.eslintrc.json --fix

install:
	@echo "[INFO] Installing Development Dependencies"
	@yarn install --production=false

outdated: install
	@echo "[INFO] Checking Outdated Dependencies"
	@yarn outdated
