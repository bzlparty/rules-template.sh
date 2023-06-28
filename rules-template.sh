#!/usr/bin/env bash

replace_in_files() {
  echo `grep -srl --exclude-dir=.git $1`
  grep -srl --exclude-dir=.git $1 | xargs -n 1 sed -i "s/$1/$2/g"
}

replace_in_files com_myorg_rules_mylang rules_$2
replace_in_files myorg $1
replace_in_files mylang $2
replace_in_files Mylang ${2^}
replace_in_files MYLANG `echo "$2" | tr '[:lower:]' '[:upper:]'`

sed -i "1,/---- SNIP ----/d" README.md
# https://github.com/bazel-contrib/rules-template/pull/81
sed -i "s/v2/v3/" .github/workflows/release.yml

git mv mylang $2
