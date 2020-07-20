RunCmd() {
  typeset cmd="$*"
  typeset ret_code
  
  echo cmd=$cmd
  eval $cmd
  ret_code=$?
  if [ $ret_code != 0 ]; then
    printf "Ret val: %d\n" $ret_code
    exit $ret_code
  fi
}