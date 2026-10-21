cask "siyuan-unlock" do
  arch arm: "-arm64"

  version "3.8.8"
  sha256 arm:   "515a7ce90502408d6e8b1cd3620284512f04ba61486c8058da5bb7311a244de6",
         intel: "061f2a519fa0f0b8ec488573f8ba56b0bb949a636a19ceade0808d055cea2381"

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
