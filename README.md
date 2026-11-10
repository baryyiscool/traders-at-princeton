# Traders @ Princeton

Website for Traders @ Princeton, a student-run quantitative trading club.
The site is a single static page: `index.html` holds all the content, styles, and the order book animation.

## Editing

1. Open `index.html` in any text editor. All copy is plain HTML in the page body.
2. Team: each person is one `<div class="member">` line. Put a square-ish photo in `team/` and point the `<img>` at it.
3. Events: each event is one `<article class="event">`. Replace `TBA` with the day and `Date` with the month once dates are set.
4. Sponsors: when a firm signs, replace a "Your logo here" box in the founding sponsors wall with its logo.
5. The interest list and sponsorship buttons open an email to the club address. Swap those `mailto:` links for the interest form link when you want to use the form.
6. Commit and push to `main`. GitHub Pages redeploys within a minute or two.

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
