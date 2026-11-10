# Traders @ Princeton

Website for Traders @ Princeton, a student-run quantitative trading club.
The site is a single static page: `index.html` holds all the content, styles, and the order book animation.

## Editing

1. Open `index.html` in any text editor.
2. Search for `[` to find every placeholder. Each one is wrapped in `<span class="ph">…</span>` or has `class="ph"`; replace the bracketed text and remove the `ph` class so it stops rendering as a placeholder.
3. Team photos: replace `<div class="avatar">[photo]</div>` with `<img class="avatar" src="team/name.jpg" alt="Name">` and put the image in a `team/` folder.
4. Commit and push to `main`. GitHub Pages redeploys within a minute or two.

## What's on the page

- **Order book** in the hero. It is a simulation in the script at the bottom of `index.html`, and visitors can trade it with the Buy and Sell buttons.
- **Make a market** game. The questions live in the `QUESTIONS` array in the same script. Each one needs a question, a fair value, a unit, and a one-line explanation.
- **Sponsor strip** under the hero. Replace the "Your firm here" items with sponsor names or logos as they sign.
- **Announcement bar** at the very top. Edit or delete the `<div class="announce">` block.

## Local preview

Any static server works. With Python installed:

```bash
python3 -m http.server 8765
```

Then open http://localhost:8765.

## Hosting

GitHub Pages, deployed from the `main` branch, root folder. `.nojekyll` tells Pages to serve the files as-is.
To use a custom domain, add a `CNAME` file containing the domain and set the DNS records GitHub lists under Settings → Pages.

## Disclaimer

Traders @ Princeton is an independent student group and is not affiliated with, sponsored by, or endorsed by Princeton University.
