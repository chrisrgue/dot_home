#!/usr/bin/env bash

function usage(){
  echo "$@"
  echo "$0 <target-dir> [<source-dir>]"
  echo
  exit 1
}


target_dir=$1
source_dir=$2

dry_run=0

#[ "$target_dir" == "" -o ! -d "$target_dir" ] &&  usage
[ "$target_dir" == "" ] &&  usage
[ -d $target_dir ] || usage "Target dir $target_dir is NOT a directory !!!"

if [ "$source_dir" == "--dry-run" ];then
  dry_run=1
  source_dir=""
fi

if [ "$source_dir" != "" ] ;then
  [ -d $source_dir ] ||  usage "Source dir $source_dir is NOT a directory !!!"
  for f in $(ls -a $source_dir|egrep '^\.');do
    if [ -f $f   -a   ! -h $f ];then
      #echo "$f is a file AND not s symlink"
      n=$(basename $f)
      if [ "$dry_run" == "1" ];then
        echo "mv $f $target_dir/"
        echo "cd $source_dir &&  ln -s $target_dir/$n"
      else
        mv $f $target_dir/
        cd $source_dir &&  ln -s $target_dir/$n
      fi
    fi
  done
else
  echo "No source_dir specified ==> assuming symlinks to $target_dir/.* to be created in $HOME"
  source_dir=$HOME
  for f in $(ls -a $target_dir|egrep '^\.');do
    n=$(basename $f)
    if [ -f $f   -a   ! -h $f   -a   ! -h $source_dir/$n ];then
      #echo "$f is a file AND not s symlink"
      if [ "$dry_run" == "1" ];then
        echo "cd $source_dir &&  ln -s $target_dir/$n"
      else
        cd $source_dir &&  ln -s $target_dir/$n
      fi
    fi
  done
fi
