XCODE_USER_TEMPLATES_DIR=~/Library/Developer/Xcode/Templates

TEMPLATES_DIR=Templates

install_templates:
	@echo "\n\n\033[6;37;45m ---------- Start templates ---------- \033[0m"
	@echo '❗️ Remove previous templates❗️'
	@rm -fR $(XCODE_USER_TEMPLATES_DIR)/$(TEMPLATES_DIR)
	@cp -R $(TEMPLATES_DIR) $(XCODE_USER_TEMPLATES_DIR)
	@echo "Installing templates"
	@echo '🐶  scene pure code: success ✅'
	@echo '🦊  service: success ✅'
	@echo '🦖  UICollectionView: success ✅'
	@echo 'Install template success. ✳️'

uninstall_templates:
	@rm -fR $(XCODE_USER_TEMPLATES_DIR)/$(TEMPLATES_DIR)
	@echo '❗️ Remove templates success❗️'
