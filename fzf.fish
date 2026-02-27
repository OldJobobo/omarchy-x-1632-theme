set -l color00 '#2F3138'
set -l color01 '#A07D7D'
set -l color02 '#8B8E76'
set -l color03 '#D6C8BA'
set -l color04 '#7F8DA1'
set -l color05 '#8383C3'
set -l color06 '#7F99C1'
set -l color07 '#CBCAC6'
set -l color08 '#8C8B86'
set -l color09 '#AF8D8D'
set -l color0A '#9B9E85'
set -l color0B '#E2D7CC'
set -l color0C '#92A9CD'
set -l color0D '#8F9CB0'
set -l color0E '#9696CF'
set -l color0F '#E3E4E0'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"
