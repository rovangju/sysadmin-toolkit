#!/usr/bin/env bash

cp -aR ./git-track /usr/local/bin/git-track

#show user library
chflags nohidden ~/Library

#eth/wifi airdrop
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

#finder list view
defaults write com.apple.Finder FXPreferredViewStyle Nlsv