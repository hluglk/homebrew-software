cask "siyuan-unlock" do
  arch arm: "-arm64"

  version "3.8.2"
  sha256 arm:   "1e7f7d285de3203ac060714786f16c6e023fd4b9d51e9b1ebdb7953f46790102",
         intel: "b6506cb4de427601c7b1f08ae8fb1e7488027194b30f31b8d3339b3d4aed34ba"

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
