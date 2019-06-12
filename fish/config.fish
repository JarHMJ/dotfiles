# 安装fisher
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

if status --is-interactive
    # 定义缩写abbr
    abbr --add --global gco git checkout
end


# 启动conda 
source  ~/anaconda3/etc/fish/conf.d/conda.fish
conda activate base

# 设置spacefish
set SPACEFISH_TIME_SHOW true
set SPACEFISH_DATE_SHOW true