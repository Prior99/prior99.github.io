default: hyrest node-libpng test-decorators

.PHONY: submodules
submodules:
	git submodule update --init --recursive --remote

.PHONY: hyrest
hyrest: submodules
	make -C repositories/hyrest/ docs
	rm -rf hyrest/docs
	cp -r repositories/hyrest/docs hyrest/docs

.PHONY: node-libpng
node-libpng: submodules
	make -C repositories/node-libpng/ docs
	rm -rf node-libpng/docs
	cp -r repositories/node-libpng/docs node-libpng/docs

.PHONY: test-decorators
test-decorators: submodules
	make -C repositories/test-decorators/ docs
	rm -rf test-decorators/docs
	cp -r repositories/test-decorators/docs test-decorators/docs