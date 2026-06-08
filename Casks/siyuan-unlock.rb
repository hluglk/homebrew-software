cask "siyuan-unlock" do
  version "3.6.5"

  url "https://github.com/appdev/siyuan-unlock/releases/download/v#{version}/siyuan-3.6.5-mac-arm64.dmg"
  name "siyuan-unlock"
  desc "思源笔记免登录版本；可以不登录使用同步功能"
  homepage "https://github.com/appdev/siyuan-unlock"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  app "SiYuan.app"
end