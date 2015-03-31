#!/usr/bin/env python

import os
import shutil
import subprocess
import sys


def main():
    git_bundles = [
        "git://github.com/majutsushi/tagbar.git",
        "git://github.com/xolox/vim-notes.git",
        "git://github.com/xolox/vim-misc.git",
        "git://github.com/Shougo/vimshell.git",
        "git://github.com/Shougo/vimproc.git",
        "git://github.com/kien/ctrlp.vim.git",
        "git://github.com/derekwyatt/vim-scala.git",
        "git://github.com/scrooloose/nerdtree.git",
        "git://github.com/altercation/vim-colors-solarized.git",
        "git://github.com/tpope/vim-fugitive.git",
        "git://github.com/tpope/vim-pathogen.git",
        "git://github.com/wting/rust.vim.git",
        "git://github.com/klen/python-mode.git",
        "git://github.com/tpope/vim-sensible.git",
        "git://github.com/vim-scripts/gitignore.git",
        "git://github.com/terryma/vim-expand-region.git",
        "git://github.com/GEverding/vim-hocon.git",
        "git://github.com/fatih/vim-go.git",
        "git://github.com/SirVer/ultisnips.git",
        "git://github.com/honza/vim-snippets.git",
        "git://github.com/elzr/vim-json.git",
    ]

    bundle_dir = os.path.join(
        os.path.dirname(os.path.abspath(__file__)),
        'bundle')

    if os.path.exists(bundle_dir):
        print('Remove {!r}? [y/N]'.format(bundle_dir))
        if sys.stdin.readline().strip().lower() != 'y':
            return 1
        shutil.rmtree(bundle_dir)
    os.mkdir(bundle_dir, 0775)

    for url in git_bundles:
        directory = os.path.join(bundle_dir, url.split('/')[-1][:-4])
        if subprocess.call(['git', 'clone', url, directory]) != 0:
            print('Error clonning repository: {}'.format(url))
            return 1

    return 0

if __name__ == "__main__":
    sys.exit(main())
