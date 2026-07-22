cask "siyuan-unlock" do
  arch arm: "-arm64"

  version "3.7.3"
  sha256 arm:   "f6972f36c78cc005e88223dc247f3a16d28b89a6ff72bc850c568146c2df6b00",
         intel: "b6801abe60d9ac54202a08e76d146eb27a71f376bbaa65cbd4eb16194e31f7af"

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
