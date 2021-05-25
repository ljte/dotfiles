# Defined in /usr/share/fish/functions/prompt_pwd.fish @ line 1
function prompt_pwd --description 'Print the current working directory, shortened to fit the prompt'
    set -l options 'h/help'
    argparse -n prompt_pwd --max-args=0 $options -- $argv
    or return

    if set -q _flag_help
        __fish_print_help prompt_pwd
        return 0
    end

    # This allows overriding fish_prompt_pwd_dir_length from the outside (global or universal) without leaking it
    set -q fish_prompt_pwd_dir_length
    or set -l fish_prompt_pwd_dir_length 1

    # Replace $HOME with "~"
    set realhome "~"

    if  [ $HOME = $PWD ]
        echo $realhome
    else 
        echo (basename $PWD)
    end
end
