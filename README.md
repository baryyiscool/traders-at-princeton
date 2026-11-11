# Traders @ Princeton

Website for Traders @ Princeton, a student-run quantitative trading club.
The site is a single static page:

- `index.html`: all the content, top to bottom (hero, Initiatives, Team, Placement, Recruitment, Sponsors, Contact).
- `styles.css` and `site.js`: its styles and behaviour. `index.html` loads them with a `?v=` tag; change that tag whenever you edit either file, or visitors keep the old copy for up to ten minutes.

## Editing

1. Open `index.html` in any text editor. All copy is plain HTML in the page body.
2. Team: each person is one `<div class="member">` line. Put a square-ish photo in `team/` and point the `<img>` at it. The team shows four per row, and a shorter last row is centred.
3. Sponsors: when a firm signs, replace a "Your logo here" box in the founding sponsors wall with its logo.
4. Placements: each firm is one `<li>` in the `<ul class="placements">` list in the Placement section. Put the count in `<span>×4</span>` after the name, or leave the span out for one person,.
5. The "Open the interest form" button in the Recruitment section links to a Google Form. Responses collect in the Google Sheet linked from the form's Responses tab. To change the questions, edit the form in Google Forms; the link stays the same.
6. Commit and push to `main`. GitHub Pages redeploys within a minute or two.

## What's on the page

- **Look and tone.** Near-black single theme, a serif display face (Cormorant Garamond), hairline rules, normal-case buttons, colour photos, and plain confident wording. Not playful, and not stiff either. Keep new sections in that voice.
- **Placement section**: a dark ticker of firm logos shown in white. Logos live in `logos/`. Add a firm by adding its `<li>` to each of the four repeated groups, with a transparent-background logo. The files came from Wikimedia Commons; the IMC file is CC BY-SA 4.0 and is credited in the footer.
- **Hero**: a full-screen photo of Fine Hall (`images/fine-hall.jpg`) with the club name, a one-line tagline, and an Apply button (to Recruitment) centred over it. The nav sits on top of the photo and turns solid once you scroll. The photo is from Wikimedia Commons under CC BY-SA 4.0 and is credited in the footer; keep that credit if you keep the photo. To swap it, replace the file or change the `url(...)` in the `.hero` rule; dark overlays are set in `.hero::before`.

## Local preview

Any static server works. With Python installed:

```bash
python3 -m http.server 8765
```

Then open http://localhost:8765.

## Hosting

Live at https://tradersatprinceton.com. GitHub Pages serves the `main` branch root of this repo, and the `CNAME` file tells it which domain to use. `.nojekyll` makes Pages serve the files as-is.

The domain is registered at Namecheap under the club's account. Its DNS has four A records for `@` pointing at GitHub Pages (185.199.108.153 to 185.199.111.153) and a CNAME for `www` pointing at `baryyiscool.github.io`. Keep auto-renew on. If the repo ever moves to another GitHub account, change that `www` record to the new account's `github.io` name.

## Disclaimer

Traders @ Princeton is an independent student group and is not affiliated with, sponsored by, or endorsed by Princeton University.

`google563e53a6d16c44a8.html` proves ownership of the site to Google Search Console. Do not delete it.

`brand/` holds the club logo: `logo-full.png` is the original, `logo-mark.svg` is the mark on its own (T, A and P in Morse code), and `linkedin-logo.png` and `linkedin-cover.png` are the versions on the LinkedIn page. The site itself does not show the logo. `favicon.png`, `favicon-48.png` and `apple-touch-icon.png` are the browser tab icons.

## Backup address

Princeton's network flags tradersatprinceton.com as a newly registered domain until about 12 December 2026, so it may not open on campus. A copy of the site is served at https://baryyiscool.github.io/tradersatprinceton/ from the repository `baryyiscool/tradersatprinceton`. The copy is the same files without `CNAME`. It does not update by itself: after a change here, the repository owner has to copy the site across again. Once the main address opens on campus, the backup repository can be deleted.
