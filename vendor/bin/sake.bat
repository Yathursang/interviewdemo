@ECHO OFF
setlocal DISABLEDELAYEDEXPANSION
SET BIN_TARGET=%~dp0/../silverstripe/framework/sake
SET COMPOSER_BIN_DIR=%~dp0
bash "%BIN_TARGET%" %*
