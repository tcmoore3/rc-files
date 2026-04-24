import glob

files_by_extension = {}
for _fn in glob.glob("*"):
    if "." not in _fn:
        files_by_extension.setdefault("", []).append(_fn)
    else:
        ext = _fn.split(".")[-1]
        files_by_extension.setdefault(ext, []).append(_fn)
for _ext, _fns in sorted(files_by_extension.items()):
    print(_ext)
    print("-" * len(_ext))
    for _fn in sorted(_fns):
        print(f"  {_fn}")
