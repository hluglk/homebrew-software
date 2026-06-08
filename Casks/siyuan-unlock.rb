cask "siyuan-unlock" do
  version "3.6.5"

  url "https://github.com/appdev/siyuan-unlock/releases/download/v#{version}/siyuan-#{version}-mac-arm64.dmg"
  name "siyuan-unlock"
  desc "思源笔记免登录版本；可以不登录使用同步功能"
  homepage "https://github.com/appdev/siyuan-unlock"

  # 指定安装方式，常用方式如下：
  app "SiYuan.app"                      # 1. 直接将 .app 拖入 Applications 文件夹
  # installer manual: "MyApp.pkg"         # 2. 对于 .pkg 安装包
  # binary "#{appdir}/SomeApp.app/Contents/MacOS/somecli" # 3. 如果应用包含命令行工具

  # 可选但推荐的字段，用于自动检查更新
  livecheck do
    url :homepage
    strategy :github_latest
  end

  # 如果需要管理员权限，可以取消注释
  # sudo true

  # 如有其他依赖，可以在这里声明
  # depends_on macos: ">= :monterey"
end