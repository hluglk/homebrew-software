cask "siyuan-unlock" do
  arch arm: "-arm64"

  version "3.8.0"
  sha256 arm:   "874cce62e04454f00e4a14120ff3da096063c04ada5e77c3dec4250065936d9d",
         intel: "885482c6b5bd532f8d39da9a4ed6d1e9fcb1bbcfd075ebe1e0ba725a6a031ff3"

  url "https://github.com/appdev/siyuan-unlock/releases/download/v#{version}/siyuan-#{version}-mac#{arch}.dmg"
  name "siyuan-unlock"
  desc "思源笔记免登录版本；可以不登录使用同步功能"
  homepage "https://github.com/appdev/siyuan-unlock"

  depends_on macos: :big_sur

  app "SiYuan.app"

  zap trash: [
    "~/.siyuan",
    "~/Library/Application Support/SiYuan",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
