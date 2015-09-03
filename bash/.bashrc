#xrandr -s 1920x1200
PS1="\h:\W:bash\\$ "
PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'
#xrandr -s 2048x1536
# added by Anaconda 2.0.1 installer
export PATH="$PATH"
export KMDK_ROOT=/scratch/code/kmdk_headers
export PXMDTOOLS=/build/pxmtools/current
export PRNXTOOLS=/build/prnxtools/current
export PATH="/etc/anaconda/bin:$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
alias stest='cd py/prnx_test/systemtest'
alias pycharm='/scratch/bin/pycharm-community-3.4.1/bin/pycharm.sh > /dev/null &'
alias ruby='/mts/home1/gokul/.rvm/rubies/ruby-2.1.2/bin/ruby'
alias fgr='~/data/fgr.sh'
alias anapy='/etc/anaconda/bin/python'
alias prby='/mts/home1/gokul/.rvm/rubies/ruby-2.1.2/bin/ruby /scratch/code/pernixcore/support/perfScripts/prnxPerf.rb'
alias anaperf='/etc/anaconda/bin/python /scratch/code/dev/pernixsupport/prnxPerf/prnxpy/esxtop.py'
alias vmgroup='./build/tools/bin/vmgroup'
alias vmctl='./build/python2.6/tools/bin/vmctl'
if [ $HOSTNAME == "gokul-ubuntu" ]; then
   xset r off
fi
alias rbt='./build/tools/bin/rbt'
alias prnxpath='export PATH=`pwd`/build/tools/bin:$PATH'
export TMPDIR=/scratch/tmp
export LD_LIBRARY_PATH=/mts/home1/gokul/.rvm/rubies/ruby-2.1.2/lib:$LD_LIBRARY_PATH
export ANAROOT=/scratch/code/pernixcore
alias maker='BUILDTYPE=release make'
alias memp='ps aux --sort -rss | more'
alias cpptags='ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++'
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
if [ "$TERM" = "xterm" ] ; then
    if [ -z "$COLORTERM" ] ; then
        if [ -z "$XTERM_VERSION" ] ; then
            echo "Warning: Terminal wrongly calling itself 'xterm'."
        else
            case "$XTERM_VERSION" in
            "XTerm(256)") TERM="xterm-256color" ;;
            "XTerm(88)") TERM="xterm-88color" ;;
            "XTerm") ;;
            *)
                echo "Warning: Unrecognized XTERM_VERSION: $XTERM_VERSION"
                ;;
            esac
        fi
    else
        case "$COLORTERM" in
            gnome-terminal)
                # Those crafty Gnome folks require you to check COLORTERM,
                # but don't allow you to just *favor* the setting over TERM.
                # Instead you need to compare it and perform some guesses
                # based upon the value. This is, perhaps, too simplistic.
                TERM="gnome-256color"
                ;;
            *)
                echo "Warning: Unrecognized COLORTERM: $COLORTERM"
                ;;
        esac
    fi
fi
