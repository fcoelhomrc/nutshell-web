# nutshell-web

Personal notes and ideas from my Obsidian vault, published via GitHub Pages.

## Branches

| Branch    | Purpose                                      |
|-----------|----------------------------------------------|
| `staging` | Active development — edit and test here      |
| `prod`    | GitHub Pages source — merge from staging     |

## Workflow

```bash
# Work on staging
git checkout staging
# ... add/edit pages
git add . && git commit && git push

# Publish to prod
git checkout prod && git merge staging && git push && git checkout staging
```

## Local preview

```bash
nix-shell
python3 -m http.server 8080
```
