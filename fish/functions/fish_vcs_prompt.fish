# Defined in /usr/share/fish/functions/fish_vcs_prompt.fish @ line 1
function fish_vcs_prompt --description 'Print the prompts for all available vcsen'
    # If a prompt succeeded, we assume that it's printed the correct info.
    # This is so we don't try svn if git already worked.
    fish_git_prompt
end
