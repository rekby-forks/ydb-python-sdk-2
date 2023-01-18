from increment_version import extract_version, SETUP_PY_PATH

with open(SETUP_PY_PATH, "rt") as f:
    setup_content = f.read()

version = extract_version(setup_content)
print(version)
