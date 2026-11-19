cask "siyuan-unlock" do
  arch arm: "-arm64"

  version "3.8.10"
  sha256 arm:   "8b7ac93dc61c384378c612982cde84c0cb35f07cae254aa67f9bfe8bcd40956b",
         intel: "d80cd200f891c089bede5d8bbd53150ab3f7758b46657cb7639dec7062ae7427"

  url "https://github.com/appdev/siyuan-unlock/releases/download/v#{version}/siyuan-#{version}-mac#{arch}.dmg"
  name "siyuan-unlock"
  desc "思源笔记免登录版本；可以不登录使用同步功能"
  homepage "https://github.com/appdev/siyuan-unlock"

  depends_on :macos

  app "SiYuan.app"

  zap trash: [
    "~/.siyuan",
    "~/Library/Application Support/SiYuan",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
