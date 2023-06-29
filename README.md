# `rules-template.sh`

A small script to customize a project generated from [rules-template](https://github.com/bazel-contrib/rules-template).

Install to a directory in `$PATH` and run the script inside the new project:

```bash
rules-template.sh myorga mylang
```

Run with `bazel` from a local copy of this repository:

```bash
bazel run :rules_template -- /path/to/repo myorga mylang
```
