#!/usr/bin/env xonsh --no-rc
$PATH = ['/usr/local/bin',
 '/System/Cryptexes/App/usr/bin',
 '/usr/bin',
 '/bin',
 '/usr/sbin',
 '/sbin',
 '/Applications/VMware Fusion.app/Contents/Public',
 '/usr/local/go/bin',
 '/usr/local/share/dotnet',
 '/Users/kyledavis/.dotnet/tools',
 '/Library/Apple/usr/bin',
 '/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin',
 '/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin',
 '/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin',
 '/Applications/iTerm.app/Contents/Resources/utilities',
  "/Users/kyledavis/.config/xonsh/scripts","/Users/kyledavis/.local/bin"]

execx($(starship init xonsh))


aliases["code"]="codium"
aliases["nrp"]="newRepo.xsh"
aliases["newecho"]="newEcho.xsh"
aliases["protoncp"]="protonMove.xsh"
aliases["dotfiles"]='/usr/local/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
aliases["autopush"]="autoPush.xsh"
aliases["sshx"]="sshx.xsh"
